------------------------------------------------------------------------------------------------------------------------
; Vector128<float> load(float x), hex://intrinsics/dinxsfp?load#load_(32f)
; load_(32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x11,0x4c,0x24,0x10,0xc5,0xfa,0x10,0x44,0x24,0x10,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss dword ptr [rsp+10h],xmm1         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 4c 24 10}
000bh vmovss xmm0,dword ptr [rsp+10h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 10}
0011h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0015h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> load(double x), hex://intrinsics/dinxsfp?load#load_(64f)
; load_(64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x11,0x4c,0x24,0x10,0xc5,0xfb,0x10,0x44,0x24,0x10,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd qword ptr [rsp+10h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 4c 24 10}
000bh vmovsd xmm0,qword ptr [rsp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 10}
0011h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0015h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float store(Vector128<float> src), hex://intrinsics/dinxsfp?store#store_(v128x32f)
; store_(v128x32f)[41] = {0x50,0xc5,0xf8,0x77,0x33,0xc0,0x89,0x44,0x24,0x04,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x11,0x44,0x24,0x04,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x11,0x44,0x24,0x04,0xc5,0xfa,0x10,0x44,0x24,0x04,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
000ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000eh vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
0014h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0018h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
001eh vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
0024h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double store(Vector128<double> src), hex://intrinsics/dinxsfp?store#store_(v128x64f)
; store_(v128x64f)[38] = {0x50,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x04,0x24,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x11,0x04,0x24,0xc5,0xf9,0x10,0x01,0xc5,0xfb,0x11,0x04,0x24,0xc5,0xfb,0x10,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
000eh vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
0013h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0017h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
001ch vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0021h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector128<double> convert(int x, out Vector128<double> dst), hex://intrinsics/dinxsfp?convert#convert_(32i,v128x64f~out)
; convert_(32i,v128x64f~out)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xfb,0x2a,0xc1,0xc5,0xf9,0x11,0x02,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2sd xmm0,xmm0,ecx                 ; VCVTSI2SD xmm1, xmm2, r/m32 || VEX.LIG.F2.0F.W0 2A /r || encoded[4]{c5 fb 2a c1}
000dh vmovupd [rdx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 02}
0011h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector128<float> convert(int src, out Vector128<float> dst), hex://intrinsics/dinxsfp?convert#convert_(32i,v128x32f~out)
; convert_(32i,v128x32f~out)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xfa,0x2a,0xc1,0xc5,0xf9,0x11,0x02,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2ss xmm0,xmm0,ecx                 ; VCVTSI2SS xmm1, xmm2, r/m32 || VEX.LIG.F3.0F.W0 2A /r || encoded[4]{c5 fa 2a c1}
000dh vmovupd [rdx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 02}
0011h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector128<float> convert(long src, out Vector128<float> dst), hex://intrinsics/dinxsfp?convert#convert_(64i,v128x32f~out)
; convert_(64i,v128x32f~out)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfa,0x2a,0xc1,0xc5,0xf9,0x11,0x02,0x48,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vcvtsi2ss xmm0,xmm0,rcx                 ; VCVTSI2SS xmm1, xmm2, r/m64 || VEX.LIG.F3.0F.W1 2A /r || encoded[5]{c4 e1 fa 2a c1}
000eh vmovupd [rdx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 02}
0012h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to32i(float x), hex://intrinsics/dinxsfp?to32i#to32i_(32f)
; to32i_(32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x11,0x44,0x24,0x08,0xc5,0xfa,0x2d,0x44,0x24,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss dword ptr [rsp+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 08}
000bh vcvtss2si eax,dword ptr [rsp+8]         ; VCVTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2D /r || encoded[6]{c5 fa 2d 44 24 08}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int to32i(double x), hex://intrinsics/dinxsfp?to32i#to32i_(64f)
; to32i_(64f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x11,0x44,0x24,0x08,0xc5,0xfb,0x2d,0x44,0x24,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd qword ptr [rsp+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 08}
000bh vcvtsd2si eax,qword ptr [rsp+8]         ; VCVTSD2SI r32, xmm1/m64 || VEX.LIG.F2.0F.W0 2D /r || encoded[6]{c5 fb 2d 44 24 08}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to64i(float x), hex://intrinsics/dinxsfp?to64i#to64i_(32f)
; to64i_(32f)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x11,0x44,0x24,0x08,0xc4,0xe1,0xfa,0x2d,0x44,0x24,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss dword ptr [rsp+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 08}
000bh vcvtss2si rax,dword ptr [rsp+8]         ; VCVTSS2SI r64, xmm1/m32 || VEX.LIG.F3.0F.W1 2D /r || encoded[7]{c4 e1 fa 2d 44 24 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long to64i(double x), hex://intrinsics/dinxsfp?to64i#to64i_(64f)
; to64i_(64f)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x11,0x44,0x24,0x08,0xc4,0xe1,0xfb,0x2d,0x44,0x24,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd qword ptr [rsp+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 08}
000bh vcvtsd2si rax,qword ptr [rsp+8]         ; VCVTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2D /r || encoded[7]{c4 e1 fb 2d 44 24 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> add(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?add#add_(v128x32f,v128x32f)
; add_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7a,0x58,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vaddss xmm0,xmm0,dword ptr [r8]         ; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[5]{c4 c1 7a 58 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> add(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?add#add_(v128x64f,v128x64f)
; add_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7b,0x58,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vaddsd xmm0,xmm0,qword ptr [r8]         ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[5]{c4 c1 7b 58 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> mul(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?mul#mul_(v128x32f,v128x32f)
; mul_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7a,0x59,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmulss xmm0,xmm0,dword ptr [r8]         ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[5]{c4 c1 7a 59 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> mul(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?mul#mul_(v128x64f,v128x64f)
; mul_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7b,0x59,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmulsd xmm0,xmm0,qword ptr [r8]         ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[5]{c4 c1 7b 59 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> fmadd(Vector128<float> x, Vector128<float> y, Vector128<float> z), hex://intrinsics/dinxsfp?fmadd#fmadd_(v128x32f,v128x32f,v128x32f)
; fmadd_(v128x32f,v128x32f,v128x32f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0x71,0xa9,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfmadd213ss xmm0,xmm1,[r9]              ; VFMADD213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 A9 /r || encoded[5]{c4 c2 71 a9 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> fmadd(Vector128<double> x, Vector128<double> y, Vector128<double> z), hex://intrinsics/dinxsfp?fmadd#fmadd_(v128x64f,v128x64f,v128x64f)
; fmadd_(v128x64f,v128x64f,v128x64f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0xf1,0xa9,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfmadd213sd xmm0,xmm1,[r9]              ; VFMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 A9 /r || encoded[5]{c4 c2 f1 a9 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> fmsub(Vector128<float> x, Vector128<float> y, Vector128<float> z), hex://intrinsics/dinxsfp?fmsub#fmsub_(v128x32f,v128x32f,v128x32f)
; fmsub_(v128x32f,v128x32f,v128x32f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0x71,0xab,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfmsub213ss xmm0,xmm1,[r9]              ; VFMSUB213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 AB /r || encoded[5]{c4 c2 71 ab 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> fmsub(Vector128<double> x, Vector128<double> y, Vector128<double> z), hex://intrinsics/dinxsfp?fmsub#fmsub_(v128x64f,v128x64f,v128x64f)
; fmsub_(v128x64f,v128x64f,v128x64f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0xf1,0xab,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfmsub213sd xmm0,xmm1,[r9]              ; VFMSUB213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 AB /r || encoded[5]{c4 c2 f1 ab 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> fnmadd(Vector128<float> x, Vector128<float> y, Vector128<float> z), hex://intrinsics/dinxsfp?fnmadd#fnmadd_(v128x32f,v128x32f,v128x32f)
; fnmadd_(v128x32f,v128x32f,v128x32f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0x71,0xad,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfnmadd213ss xmm0,xmm1,[r9]             ; VFNMADD213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 AD /r || encoded[5]{c4 c2 71 ad 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> fnmadd(Vector128<double> x, Vector128<double> y, Vector128<double> z), hex://intrinsics/dinxsfp?fnmadd#fnmadd_(v128x64f,v128x64f,v128x64f)
; fnmadd_(v128x64f,v128x64f,v128x64f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0xf1,0xad,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfnmadd213sd xmm0,xmm1,[r9]             ; VFNMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 AD /r || encoded[5]{c4 c2 f1 ad 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> div(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?div#div_(v128x32f,v128x32f)
; div_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7a,0x5e,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vdivss xmm0,xmm0,[r8]                   ; VDIVSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5E /r || encoded[5]{c4 c1 7a 5e 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> div(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?div#div_(v128x64f,v128x64f)
; div_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7b,0x5e,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vdivsd xmm0,xmm0,[r8]                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[5]{c4 c1 7b 5e 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> sub(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?sub#sub_(v128x32f,v128x32f)
; sub_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7a,0x5c,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vsubss xmm0,xmm0,dword ptr [r8]         ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[5]{c4 c1 7a 5c 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> sub(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?sub#sub_(v128x64f,v128x64f)
; sub_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7b,0x5c,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vsubsd xmm0,xmm0,qword ptr [r8]         ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[5]{c4 c1 7b 5c 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> max(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?max#max_(v128x32f,v128x32f)
; max_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7a,0x5f,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmaxss xmm0,xmm0,dword ptr [r8]         ; VMAXSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5F /r || encoded[5]{c4 c1 7a 5f 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> max(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?max#max_(v128x64f,v128x64f)
; max_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7b,0x5f,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmaxsd xmm0,xmm0,qword ptr [r8]         ; VMAXSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5F /r || encoded[5]{c4 c1 7b 5f 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> min(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?min#min_(v128x32f,v128x32f)
; min_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7a,0x5d,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vminss xmm0,xmm0,dword ptr [r8]         ; VMINSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5D /r || encoded[5]{c4 c1 7a 5d 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> min(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?min#min_(v128x64f,v128x64f)
; min_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7b,0x5d,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vminsd xmm0,xmm0,qword ptr [r8]         ; VMINSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5D /r || encoded[5]{c4 c1 7b 5d 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool eq(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?eq#eq_(v128x32f,v128x32f)
; eq_(v128x32f,v128x32f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf8,0x2e,0x02,0x0f,0x9b,0xc2,0x0f,0x94,0xc0,0x22,0xc2,0x0f,0xb6,0xd0,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vucomiss xmm0,dword ptr [rdx]           ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e 02}
000dh setnp dl                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h and al,dl                               ; AND r8, r/m8 || 22 /r || encoded[2]{22 c2}
0015h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
0018h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool eq(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?eq#eq_(v128x64f,v128x64f)
; eq_(v128x64f,v128x64f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x2e,0x02,0x0f,0x9b,0xc2,0x0f,0x94,0xc0,0x22,0xc2,0x0f,0xb6,0xd0,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vucomisd xmm0,qword ptr [rdx]           ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e 02}
000dh setnp dl                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c2}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h and al,dl                               ; AND r8, r/m8 || 22 /r || encoded[2]{22 c2}
0015h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
0018h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool neq(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?neq#neq_(v128x32f,v128x32f)
; neq_(v128x32f,v128x32f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf8,0x2f,0x02,0x0f,0x9a,0xc2,0x0f,0x95,0xc0,0x0a,0xc2,0x0f,0xb6,0xd0,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vcomiss xmm0,dword ptr [rdx]            ; VCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2F /r || encoded[4]{c5 f8 2f 02}
000dh setp dl                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c2}
0010h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0013h or al,dl                                ; OR r8, r/m8 || 0A /r || encoded[2]{0a c2}
0015h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
0018h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool neq(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?neq#neq_(v128x64f,v128x64f)
; neq_(v128x64f,v128x64f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x2f,0x02,0x0f,0x9a,0xc2,0x0f,0x95,0xc0,0x0a,0xc2,0x0f,0xb6,0xd0,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vcomisd xmm0,qword ptr [rdx]            ; VCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2F /r || encoded[4]{c5 f9 2f 02}
000dh setp dl                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c2}
0010h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0013h or al,dl                                ; OR r8, r/m8 || 0A /r || encoded[2]{0a c2}
0015h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
0018h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool gt(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?gt#gt_(v128x32f,v128x32f)
; gt_(v128x32f,v128x32f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf8,0x2f,0x02,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vcomiss xmm0,dword ptr [rdx]            ; VCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2F /r || encoded[4]{c5 f8 2f 02}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool gt(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?gt#gt_(v128x64f,v128x64f)
; gt_(v128x64f,v128x64f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x2f,0x02,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vcomisd xmm0,qword ptr [rdx]            ; VCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2F /r || encoded[4]{c5 f9 2f 02}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool gteq(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?gteq#gteq_(v128x32f,v128x32f)
; gteq_(v128x32f,v128x32f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf8,0x2f,0x02,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vcomiss xmm0,dword ptr [rdx]            ; VCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2F /r || encoded[4]{c5 f8 2f 02}
000dh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool gteq(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?gteq#gteq_(v128x64f,v128x64f)
; gteq_(v128x64f,v128x64f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x2f,0x02,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vcomisd xmm0,qword ptr [rdx]            ; VCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2F /r || encoded[4]{c5 f9 2f 02}
000dh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool ngt(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?ngt#ngt_(v128x32f,v128x32f)
; ngt_(v128x32f,v128x32f)[45] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0xc2,0x02,0x02,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x25,0xff,0xff,0xff,0x7f,0x3d,0x00,0x00,0x80,0x7f,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vcmpless xmm0,xmm0,dword ptr [rdx]      ; VCMPSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.F3.0F.WIG C2 /r ib || encoded[5]{c5 fa c2 02 02}
000eh vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
0014h mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
0018h and eax,7fffffffh                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff ff ff 7f}
001dh cmp eax,7f800000h                       ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d 00 00 80 7f}
0022h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool ngt(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?ngt#ngt_(v128x64f,v128x64f)
; ngt_(v128x64f,v128x64f)[60] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfb,0xc2,0x02,0x02,0xc5,0xfb,0x11,0x04,0x24,0x48,0x8b,0x04,0x24,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,0x48,0x23,0xc2,0x48,0xba,0x00,0x00,0x00,0x00,0x00,0x00,0xf0,0x7f,0x48,0x3b,0xc2,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vcmplesd xmm0,xmm0,qword ptr [rdx]      ; VCMPSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.F2.0F.WIG C2 /r ib || encoded[5]{c5 fb c2 02 02}
000eh vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
0013h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0017h mov rdx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff 7f}
0021h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0024h mov rdx,7ff0000000000000h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 00 00 f0 7f}
002eh cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0031h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0034h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0037h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool lt(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?lt#lt_(v128x32f,v128x32f)
; lt_(v128x32f,v128x32f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xf8,0x2f,0x01,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcomiss xmm0,dword ptr [rcx]            ; VCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2F /r || encoded[4]{c5 f8 2f 01}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool lt(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?lt#lt_(v128x64f,v128x64f)
; lt_(v128x64f,v128x64f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xf9,0x2f,0x01,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcomisd xmm0,qword ptr [rcx]            ; VCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2F /r || encoded[4]{c5 f9 2f 01}
000dh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool nlt(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?nlt#nlt_(v128x32f,v128x32f)
; nlt_(v128x32f,v128x32f)[45] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0xc2,0x02,0x05,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x25,0xff,0xff,0xff,0x7f,0x3d,0x00,0x00,0x80,0x7f,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vcmpnltss xmm0,xmm0,dword ptr [rdx]     ; VCMPSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.F3.0F.WIG C2 /r ib || encoded[5]{c5 fa c2 02 05}
000eh vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
0014h mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
0018h and eax,7fffffffh                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff ff ff 7f}
001dh cmp eax,7f800000h                       ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d 00 00 80 7f}
0022h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool nlt(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?nlt#nlt_(v128x64f,v128x64f)
; nlt_(v128x64f,v128x64f)[60] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfb,0xc2,0x02,0x05,0xc5,0xfb,0x11,0x04,0x24,0x48,0x8b,0x04,0x24,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,0x48,0x23,0xc2,0x48,0xba,0x00,0x00,0x00,0x00,0x00,0x00,0xf0,0x7f,0x48,0x3b,0xc2,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vcmpnltsd xmm0,xmm0,qword ptr [rdx]     ; VCMPSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.F2.0F.WIG C2 /r ib || encoded[5]{c5 fb c2 02 05}
000eh vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
0013h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0017h mov rdx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff 7f}
0021h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0024h mov rdx,7ff0000000000000h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 00 00 f0 7f}
002eh cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0031h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0034h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0037h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool lteq(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxsfp?lteq#lteq_(v128x32f,v128x32f)
; lteq_(v128x32f,v128x32f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xf8,0x2e,0x01,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vucomiss xmm0,dword ptr [rcx]           ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e 01}
000dh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool lteq(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxsfp?lteq#lteq_(v128x64f,v128x64f)
; lteq_(v128x64f,v128x64f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xf9,0x2e,0x01,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vucomisd xmm0,qword ptr [rcx]           ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e 01}
000dh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> cmp(Vector128<float> x, Vector128<float> y, FpCmpMode:byte mode), hex://intrinsics/dinxsfp?cmp#cmp_(v128x32f,v128x32f,FpCmpMode~8u)
; cmp_(v128x32f,v128x32f,FpCmpMode~8u)[63] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0x48,0x8b,0xce,0xc5,0xf9,0x29,0x44,0x24,0x30,0xc5,0xf9,0x29,0x4c,0x24,0x20,0x48,0x8d,0x54,0x24,0x30,0x4c,0x8d,0x44,0x24,0x20,0x45,0x0f,0xb6,0xc9,0xe8,0x52,0x60,0x18,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
000fh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0014h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0017h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
001dh vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
0023h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0028h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
002dh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0031h call 7ff7c7759d28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 60 18 ff}
0036h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0039h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
003dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> cmp(Vector128<double> x, Vector128<double> y, FpCmpMode:byte mode), hex://intrinsics/dinxsfp?cmp#cmp_(v128x64f,v128x64f,FpCmpMode~8u)
; cmp_(v128x64f,v128x64f,FpCmpMode~8u)[63] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0x48,0x8b,0xce,0xc5,0xf9,0x29,0x44,0x24,0x30,0xc5,0xf9,0x29,0x4c,0x24,0x20,0x48,0x8d,0x54,0x24,0x30,0x4c,0x8d,0x44,0x24,0x20,0x45,0x0f,0xb6,0xc9,0xe8,0xea,0x5f,0x18,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
000fh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0014h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0017h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
001dh vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
0023h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0028h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
002dh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0031h call 7ff7c7759d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 5f 18 ff}
0036h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0039h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
003dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> ceil(Vector128<float> x), hex://intrinsics/dinxsfp?ceil#ceil_(v128x32f)
; ceil_(v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xe3,0x79,0x0a,0xc0,0x0a,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vroundss xmm0,xmm0,xmm0,0ah             ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 0a}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> ceil(Vector128<double> x), hex://intrinsics/dinxsfp?ceil#ceil_(v128x64f)
; ceil_(v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xe3,0x79,0x0b,0xc0,0x0a,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vroundsd xmm0,xmm0,xmm0,0ah             ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 0a}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> floor(Vector128<float> x), hex://intrinsics/dinxsfp?floor#floor_(v128x32f)
; floor_(v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xe3,0x79,0x0a,0xc0,0x0a,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vroundss xmm0,xmm0,xmm0,0ah             ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 0a}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> floor(Vector128<double> x), hex://intrinsics/dinxsfp?floor#floor_(v128x64f)
; floor_(v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xe3,0x79,0x0b,0xc0,0x0a,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vroundsd xmm0,xmm0,xmm0,0ah             ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 0a}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> rcp(Vector128<float> x), hex://intrinsics/dinxsfp?rcp#rcp_(v128x32f)
; rcp_(v128x32f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xfa,0x53,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vrcpss xmm0,xmm0,xmm0                   ; VRCPSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 53 /r || encoded[4]{c5 fa 53 c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> sqrt(Vector128<float> x), hex://intrinsics/dinxsfp?sqrt#sqrt_(v128x32f)
; sqrt_(v128x32f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xfa,0x51,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vsqrtss xmm0,xmm0,xmm0                  ; VSQRTSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 51 /r || encoded[4]{c5 fa 51 c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> sqrt(Vector128<double> x), hex://intrinsics/dinxsfp?sqrt#sqrt_(v128x64f)
; sqrt_(v128x64f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xfb,0x51,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vsqrtsd xmm0,xmm0,xmm0                  ; VSQRTSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 51 /r || encoded[4]{c5 fb 51 c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Vector128<float> rsqrt(ref Vector128<float> x), hex://intrinsics/dinxsfp?rsqrt#rsqrt_(v128x32f~ref)
; rsqrt_(v128x32f~ref)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x52,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vrsqrtss xmm0,xmm0,xmm0                 ; VRSQRTSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 52 /r || encoded[4]{c5 fa 52 c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool IsNaN(Vector128<float> x, int index), hex://intrinsics/dinxsfp?IsNaN#IsNaN_(v128x32f,32i)
; IsNaN_(v128x32f,32i)[76] = {0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x29,0x44,0x24,0x30,0x83,0xfa,0x04,0x73,0x2c,0x48,0x8d,0x44,0x24,0x30,0x48,0x63,0xca,0xc5,0xfa,0x10,0x04,0x88,0xc5,0xfa,0x11,0x44,0x24,0x2c,0x8b,0x44,0x24,0x2c,0x25,0xff,0xff,0xff,0x7f,0x3d,0x00,0x00,0x80,0x7f,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x48,0xc3,0xb9,0x15,0x00,0x00,0x00,0xe8,0x0c,0x12,0x19,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
000bh vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0011h cmp edx,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 04}
0014h jae short 0042h                         ; JAE rel8 || 73 cb || encoded[2]{73 2c}
0016h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
001bh movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
001eh vmovss xmm0,dword ptr [rax+rcx*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 04 88}
0023h vmovss dword ptr [rsp+2ch],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 2c}
0029h mov eax,[rsp+2ch]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 2c}
002dh and eax,7fffffffh                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff ff ff 7f}
0032h cmp eax,7f800000h                       ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d 00 00 80 7f}
0037h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
003ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
003dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
0042h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
0047h call 7ff7c7765138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 12 19 ff}
------------------------------------------------------------------------------------------------------------------------
; bool IsNaN(Vector128<double> x, int index), hex://intrinsics/dinxsfp?IsNaN#IsNaN_(v128x64f,32i)
; IsNaN_(v128x64f,32i)[93] = {0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x29,0x44,0x24,0x30,0x83,0xfa,0x02,0x73,0x3d,0x48,0x8d,0x44,0x24,0x30,0x48,0x63,0xca,0xc5,0xfb,0x10,0x04,0xc8,0xc5,0xfb,0x11,0x44,0x24,0x28,0x48,0x8b,0x44,0x24,0x28,0x48,0xb9,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,0x48,0x23,0xc1,0x48,0xb9,0x00,0x00,0x00,0x00,0x00,0x00,0xf0,0x7f,0x48,0x3b,0xc1,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x48,0xc3,0xb9,0x15,0x00,0x00,0x00,0xe8,0x8b,0x11,0x19,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
000bh vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0011h cmp edx,2                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 fa 02}
0014h jae short 0053h                         ; JAE rel8 || 73 cb || encoded[2]{73 3d}
0016h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
001bh movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
001eh vmovsd xmm0,qword ptr [rax+rcx*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 c8}
0023h vmovsd qword ptr [rsp+28h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 28}
0029h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
002eh mov rcx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 ff ff ff ff ff ff ff 7f}
0038h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
003bh mov rcx,7ff0000000000000h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 00 00 00 00 00 f0 7f}
0045h cmp rax,rcx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c1}
0048h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
004bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
004eh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
0053h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
0058h call 7ff7c7765138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 11 19 ff}
------------------------------------------------------------------------------------------------------------------------
; FloatComparisonMode:byte fpmode(FpCmpMode:byte m), hex://intrinsics/dinxsfp?fpmode#fpmode_(FpCmpMode~8u)
; fpmode_(FpCmpMode~8u)[9] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
