------------------------------------------------------------------------------------------------------------------------
; Vector128<float> load<float>(float src), hex://intrinsics/ginxsfp?load#load_g[32f](32f)
; load_g[32f](32f)[29] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfa,0x11,0x4c,0x24,0x04,0xc5,0xfa,0x10,0x44,0x24,0x04,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm1           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 4c 24 04}
000bh vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
0011h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0015h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0018h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> load<double>(double src), hex://intrinsics/ginxsfp?load#load_g[64f](64f)
; load_g[64f](64f)[27] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xfb,0x11,0x0c,0x24,0xc5,0xfb,0x10,0x04,0x24,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovsd qword ptr [rsp],xmm1             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 0c 24}
000ah vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float store<float>(Vector128<float> src), hex://intrinsics/ginxsfp?store#store_g[32f](v128x32f)
; store_g[32f](v128x32f)[47] = {0x50,0xc5,0xf8,0x77,0x33,0xc0,0x89,0x44,0x24,0x04,0xc5,0xf9,0x10,0x01,0xc5,0xf0,0x57,0xc9,0xc5,0xfa,0x11,0x4c,0x24,0x04,0xc5,0xfa,0x11,0x4c,0x24,0x04,0xc5,0xfa,0x11,0x44,0x24,0x04,0xc5,0xfa,0x10,0x44,0x24,0x04,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
000ah vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
000eh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0012h vmovss dword ptr [rsp+4],xmm1           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 4c 24 04}
0018h vmovss dword ptr [rsp+4],xmm1           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 4c 24 04}
001eh vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
0024h vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
002ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double store<double>(Vector128<double> src), hex://intrinsics/ginxsfp?store#store_g[64f](v128x64f)
; store_g[64f](v128x64f)[43] = {0x50,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x04,0x24,0xc5,0xf9,0x10,0x01,0xc5,0xf0,0x57,0xc9,0xc5,0xfb,0x11,0x0c,0x24,0xc5,0xfb,0x11,0x0c,0x24,0xc5,0xfb,0x11,0x04,0x24,0xc5,0xfb,0x10,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0006h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000ah vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
000eh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0012h vmovsd qword ptr [rsp],xmm1             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 0c 24}
0017h vmovsd qword ptr [rsp],xmm1             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 0c 24}
001ch vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
0021h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0026h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> add<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?add#add_g[32f](v128x32f,v128x32f)
; add_g[32f](v128x32f,v128x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfa,0x58,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vaddss xmm0,xmm0,xmm1                   ; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[4]{c5 fa 58 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> add<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?add#add_g[64f](v128x64f,v128x64f)
; add_g[64f](v128x64f,v128x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfb,0x58,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vaddsd xmm0,xmm0,xmm1                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 fb 58 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> sub<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?sub#sub_g[32f](v128x32f,v128x32f)
; sub_g[32f](v128x32f,v128x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfa,0x5c,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vsubss xmm0,xmm0,xmm1                   ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[4]{c5 fa 5c c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> sub<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?sub#sub_g[64f](v128x64f,v128x64f)
; sub_g[64f](v128x64f,v128x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfb,0x5c,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vsubsd xmm0,xmm0,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 fb 5c c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> mul<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?mul#mul_g[32f](v128x32f,v128x32f)
; mul_g[32f](v128x32f,v128x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfa,0x59,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmulss xmm0,xmm0,xmm1                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> mul<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?mul#mul_g[64f](v128x64f,v128x64f)
; mul_g[64f](v128x64f,v128x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfb,0x59,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmulsd xmm0,xmm0,xmm1                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> div<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?div#div_g[32f](v128x32f,v128x32f)
; div_g[32f](v128x32f,v128x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfa,0x5e,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vdivss xmm0,xmm0,xmm1                   ; VDIVSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5E /r || encoded[4]{c5 fa 5e c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> div<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?div#div_g[64f](v128x64f,v128x64f)
; div_g[64f](v128x64f,v128x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfb,0x5e,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vdivsd xmm0,xmm0,xmm1                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 fb 5e c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> min<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?min#min_g[32f](v128x32f,v128x32f)
; min_g[32f](v128x32f,v128x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfa,0x5d,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vminss xmm0,xmm0,xmm1                   ; VMINSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5D /r || encoded[4]{c5 fa 5d c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> min<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?min#min_g[64f](v128x64f,v128x64f)
; min_g[64f](v128x64f,v128x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfb,0x5d,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vminsd xmm0,xmm0,xmm1                   ; VMINSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5D /r || encoded[4]{c5 fb 5d c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> max<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?max#max_g[32f](v128x32f,v128x32f)
; max_g[32f](v128x32f,v128x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfa,0x5f,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmaxss xmm0,xmm0,xmm1                   ; VMAXSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5F /r || encoded[4]{c5 fa 5f c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> max<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?max#max_g[64f](v128x64f,v128x64f)
; max_g[64f](v128x64f,v128x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xfb,0x5f,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmaxsd xmm0,xmm0,xmm1                   ; VMAXSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5F /r || encoded[4]{c5 fb 5f c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> ceil<float>(Vector128<float> x), hex://intrinsics/ginxsfp?ceil#ceil_g[32f](v128x32f)
; ceil_g[32f](v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xe3,0x79,0x0a,0xc0,0x0a,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vroundss xmm0,xmm0,xmm0,0ah             ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 0a}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> ceil<double>(Vector128<double> x), hex://intrinsics/ginxsfp?ceil#ceil_g[64f](v128x64f)
; ceil_g[64f](v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xe3,0x79,0x0b,0xc0,0x0a,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vroundsd xmm0,xmm0,xmm0,0ah             ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 0a}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> floor<float>(Vector128<float> x), hex://intrinsics/ginxsfp?floor#floor_g[32f](v128x32f)
; floor_g[32f](v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xe3,0x79,0x0a,0xc0,0x0a,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vroundss xmm0,xmm0,xmm0,0ah             ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 0a}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> floor<double>(Vector128<double> x), hex://intrinsics/ginxsfp?floor#floor_g[64f](v128x64f)
; floor_g[64f](v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xe3,0x79,0x0b,0xc0,0x0a,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vroundsd xmm0,xmm0,xmm0,0ah             ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 0a}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> sqrt<float>(Vector128<float> x), hex://intrinsics/ginxsfp?sqrt#sqrt_g[32f](v128x32f)
; sqrt_g[32f](v128x32f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xfa,0x51,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vsqrtss xmm0,xmm0,xmm0                  ; VSQRTSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 51 /r || encoded[4]{c5 fa 51 c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> sqrt<double>(Vector128<double> x), hex://intrinsics/ginxsfp?sqrt#sqrt_g[64f](v128x64f)
; sqrt_g[64f](v128x64f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xfb,0x51,0xc0,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vsqrtsd xmm0,xmm0,xmm0                  ; VSQRTSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 51 /r || encoded[4]{c5 fb 51 c0}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> fmadd<float>(Vector128<float> x, Vector128<float> y, Vector128<float> z), hex://intrinsics/ginxsfp?fmadd#fmadd_g[32f](v128x32f,v128x32f,v128x32f)
; fmadd_g[32f](v128x32f,v128x32f,v128x32f)[32] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc1,0x79,0x10,0x11,0xc4,0xe2,0x71,0xa9,0xc2,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vfmadd213ss xmm0,xmm1,xmm2              ; VFMADD213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 A9 /r || encoded[5]{c4 e2 71 a9 c2}
0018h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> fmadd<double>(Vector128<double> x, Vector128<double> y, Vector128<double> z), hex://intrinsics/ginxsfp?fmadd#fmadd_g[64f](v128x64f,v128x64f,v128x64f)
; fmadd_g[64f](v128x64f,v128x64f,v128x64f)[32] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc1,0x79,0x10,0x11,0xc4,0xe2,0xf1,0xa9,0xc2,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vfmadd213sd xmm0,xmm1,xmm2              ; VFMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 A9 /r || encoded[5]{c4 e2 f1 a9 c2}
0018h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> fmsub<float>(Vector128<float> x, Vector128<float> y, Vector128<float> z), hex://intrinsics/ginxsfp?fmsub#fmsub_g[32f](v128x32f,v128x32f,v128x32f)
; fmsub_g[32f](v128x32f,v128x32f,v128x32f)[32] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc1,0x79,0x10,0x11,0xc4,0xe2,0x71,0xab,0xc2,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vfmsub213ss xmm0,xmm1,xmm2              ; VFMSUB213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 AB /r || encoded[5]{c4 e2 71 ab c2}
0018h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> fmsub<double>(Vector128<double> x, Vector128<double> y, Vector128<double> z), hex://intrinsics/ginxsfp?fmsub#fmsub_g[64f](v128x64f,v128x64f,v128x64f)
; fmsub_g[64f](v128x64f,v128x64f,v128x64f)[32] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc1,0x79,0x10,0x11,0xc4,0xe2,0xf1,0xab,0xc2,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vfmsub213sd xmm0,xmm1,xmm2              ; VFMSUB213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 AB /r || encoded[5]{c4 e2 f1 ab c2}
0018h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> fnmadd<float>(Vector128<float> x, Vector128<float> y, Vector128<float> z), hex://intrinsics/ginxsfp?fnmadd#fnmadd_g[32f](v128x32f,v128x32f,v128x32f)
; fnmadd_g[32f](v128x32f,v128x32f,v128x32f)[32] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc1,0x79,0x10,0x11,0xc4,0xe2,0x71,0xad,0xc2,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vfnmadd213ss xmm0,xmm1,xmm2             ; VFNMADD213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 AD /r || encoded[5]{c4 e2 71 ad c2}
0018h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> fnmadd<double>(Vector128<double> x, Vector128<double> y, Vector128<double> z), hex://intrinsics/ginxsfp?fnmadd#fnmadd_g[64f](v128x64f,v128x64f,v128x64f)
; fnmadd_g[64f](v128x64f,v128x64f,v128x64f)[32] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc1,0x79,0x10,0x11,0xc4,0xe2,0xf1,0xad,0xc2,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vfnmadd213sd xmm0,xmm1,xmm2             ; VFNMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 AD /r || encoded[5]{c4 e2 f1 ad c2}
0018h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool eq<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?eq#eq_g[32f](v128x32f,v128x32f)
; eq_g[32f](v128x32f,v128x32f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf8,0x2e,0xc1,0x0f,0x9b,0xc2,0x0f,0x94,0xc0,0x22,0xc2,0x0f,0xb6,0xd0,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0011h setnp dl                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c2}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h and al,dl                               ; AND r8, r/m8 || 22 /r || encoded[2]{22 c2}
0019h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
001ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool eq<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?eq#eq_g[64f](v128x64f,v128x64f)
; eq_g[64f](v128x64f,v128x64f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf9,0x2e,0xc1,0x0f,0x9b,0xc2,0x0f,0x94,0xc0,0x22,0xc2,0x0f,0xb6,0xd0,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0011h setnp dl                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c2}
0014h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0017h and al,dl                               ; AND r8, r/m8 || 22 /r || encoded[2]{22 c2}
0019h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
001ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool neq<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?neq#neq_g[32f](v128x32f,v128x32f)
; neq_g[32f](v128x32f,v128x32f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf8,0x2f,0xc1,0x0f,0x9a,0xc2,0x0f,0x95,0xc0,0x0a,0xc2,0x0f,0xb6,0xd0,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcomiss xmm0,xmm1                       ; VCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2F /r || encoded[4]{c5 f8 2f c1}
0011h setp dl                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c2}
0014h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0017h or al,dl                                ; OR r8, r/m8 || 0A /r || encoded[2]{0a c2}
0019h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
001ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool neq<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?neq#neq_g[64f](v128x64f,v128x64f)
; neq_g[64f](v128x64f,v128x64f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf9,0x2f,0xc1,0x0f,0x9a,0xc2,0x0f,0x95,0xc0,0x0a,0xc2,0x0f,0xb6,0xd0,0x8b,0xc2,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcomisd xmm0,xmm1                       ; VCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2F /r || encoded[4]{c5 f9 2f c1}
0011h setp dl                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c2}
0014h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0017h or al,dl                                ; OR r8, r/m8 || 0A /r || encoded[2]{0a c2}
0019h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
001ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool lteq<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?lteq#lteq_g[32f](v128x32f,v128x32f)
; lteq_g[32f](v128x32f,v128x32f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf8,0x2e,0xc8,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0011h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool lteq<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?lteq#lteq_g[64f](v128x64f,v128x64f)
; lteq_g[64f](v128x64f,v128x64f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf8,0x2e,0xc8,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0011h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool ngt<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?ngt#ngt_g[32f](v128x32f,v128x32f)
; ngt_g[32f](v128x32f,v128x32f)[49] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xfa,0xc2,0xc1,0x02,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x25,0xff,0xff,0xff,0x7f,0x3d,0x00,0x00,0x80,0x7f,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcmpless xmm0,xmm0,xmm1                 ; VCMPSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.F3.0F.WIG C2 /r ib || encoded[5]{c5 fa c2 c1 02}
0012h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
0018h mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
001ch and eax,7fffffffh                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff ff ff 7f}
0021h cmp eax,7f800000h                       ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d 00 00 80 7f}
0026h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool ngt<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?ngt#ngt_g[64f](v128x64f,v128x64f)
; ngt_g[64f](v128x64f,v128x64f)[49] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xfa,0xc2,0xc1,0x02,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x25,0xff,0xff,0xff,0x7f,0x3d,0x00,0x00,0x80,0x7f,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcmpless xmm0,xmm0,xmm1                 ; VCMPSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.F3.0F.WIG C2 /r ib || encoded[5]{c5 fa c2 c1 02}
0012h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
0018h mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
001ch and eax,7fffffffh                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff ff ff 7f}
0021h cmp eax,7f800000h                       ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d 00 00 80 7f}
0026h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool nlt<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?nlt#nlt_g[32f](v128x32f,v128x32f)
; nlt_g[32f](v128x32f,v128x32f)[49] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xfa,0xc2,0xc1,0x05,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x25,0xff,0xff,0xff,0x7f,0x3d,0x00,0x00,0x80,0x7f,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcmpnltss xmm0,xmm0,xmm1                ; VCMPSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.F3.0F.WIG C2 /r ib || encoded[5]{c5 fa c2 c1 05}
0012h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
0018h mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
001ch and eax,7fffffffh                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff ff ff 7f}
0021h cmp eax,7f800000h                       ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d 00 00 80 7f}
0026h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool nlt<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?nlt#nlt_g[64f](v128x64f,v128x64f)
; nlt_g[64f](v128x64f,v128x64f)[49] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xfa,0xc2,0xc1,0x05,0xc5,0xfa,0x11,0x44,0x24,0x04,0x8b,0x44,0x24,0x04,0x25,0xff,0xff,0xff,0x7f,0x3d,0x00,0x00,0x80,0x7f,0x0f,0x9f,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcmpnltss xmm0,xmm0,xmm1                ; VCMPSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.F3.0F.WIG C2 /r ib || encoded[5]{c5 fa c2 c1 05}
0012h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
0018h mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
001ch and eax,7fffffffh                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff ff ff 7f}
0021h cmp eax,7f800000h                       ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d 00 00 80 7f}
0026h setg al                                 ; SETG r/m8 || 0F 9F /r || encoded[3]{0f 9f c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool gt<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?gt#gt_g[32f](v128x32f,v128x32f)
; gt_g[32f](v128x32f,v128x32f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf8,0x2f,0xc1,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcomiss xmm0,xmm1                       ; VCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2F /r || encoded[4]{c5 f8 2f c1}
0011h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool gt<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?gt#gt_g[64f](v128x64f,v128x64f)
; gt_g[64f](v128x64f,v128x64f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf9,0x2f,0xc1,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcomisd xmm0,xmm1                       ; VCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2F /r || encoded[4]{c5 f9 2f c1}
0011h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool gteq<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?gteq#gteq_g[32f](v128x32f,v128x32f)
; gteq_g[32f](v128x32f,v128x32f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf8,0x2f,0xc1,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcomiss xmm0,xmm1                       ; VCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2F /r || encoded[4]{c5 f8 2f c1}
0011h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool gteq<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?gteq#gteq_g[64f](v128x64f,v128x64f)
; gteq_g[64f](v128x64f,v128x64f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf9,0x2f,0xc1,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcomisd xmm0,xmm1                       ; VCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2F /r || encoded[4]{c5 f9 2f c1}
0011h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool lt<float>(Vector128<float> x, Vector128<float> y), hex://intrinsics/ginxsfp?lt#lt_g[32f](v128x32f,v128x32f)
; lt_g[32f](v128x32f,v128x32f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf8,0x2f,0xc8,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcomiss xmm1,xmm0                       ; VCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2F /r || encoded[4]{c5 f8 2f c8}
0011h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool lt<double>(Vector128<double> x, Vector128<double> y), hex://intrinsics/ginxsfp?lt#lt_g[64f](v128x64f,v128x64f)
; lt_g[64f](v128x64f,v128x64f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc5,0xf9,0x2f,0xc8,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vcomisd xmm1,xmm0                       ; VCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2F /r || encoded[4]{c5 f9 2f c8}
0011h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> cmp<float>(Vector128<float> x, Vector128<float> y, FpCmpMode:byte mode), hex://intrinsics/ginxsfp?cmp#cmp_g[32f](v128x32f,v128x32f,FpCmpMode~8u)
; cmp_g[32f](v128x32f,v128x32f,FpCmpMode~8u)[87] = {0x56,0x48,0x83,0xec,0x50,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x40,0x48,0x89,0x44,0x24,0x48,0x48,0x8b,0xf1,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0x48,0x8d,0x4c,0x24,0x40,0xc5,0xf9,0x29,0x44,0x24,0x30,0xc5,0xf9,0x29,0x4c,0x24,0x20,0x48,0x8d,0x54,0x24,0x30,0x4c,0x8d,0x44,0x24,0x20,0x45,0x0f,0xb6,0xc9,0xe8,0x64,0xbc,0x0f,0xff,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x06,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x50,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,50h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 50}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
000fh mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0014h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0017h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
001bh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0020h lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0025h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
002bh vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
0031h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0036h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
003bh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
003fh call 7ff7c7739d28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 bc 0f ff}
0044h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
004ah vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,50h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 50}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> cmp<double>(Vector128<double> x, Vector128<double> y, FpCmpMode:byte mode), hex://intrinsics/ginxsfp?cmp#cmp_g[64f](v128x64f,v128x64f,FpCmpMode~8u)
; cmp_g[64f](v128x64f,v128x64f,FpCmpMode~8u)[87] = {0x56,0x48,0x83,0xec,0x50,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x40,0x48,0x89,0x44,0x24,0x48,0x48,0x8b,0xf1,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0x48,0x8d,0x4c,0x24,0x40,0xc5,0xf9,0x29,0x44,0x24,0x30,0xc5,0xf9,0x29,0x4c,0x24,0x20,0x48,0x8d,0x54,0x24,0x30,0x4c,0x8d,0x44,0x24,0x20,0x45,0x0f,0xb6,0xc9,0xe8,0xec,0xbb,0x0f,0xff,0xc5,0xf9,0x28,0x44,0x24,0x40,0xc5,0xf9,0x11,0x06,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x50,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,50h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 50}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
000fh mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0014h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0017h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
001bh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0020h lea rcx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 40}
0025h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
002bh vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
0031h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0036h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
003bh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
003fh call 7ff7c7739d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec bb 0f ff}
0044h vmovapd xmm0,[rsp+40h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 40}
004ah vmovupd [rsi],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 06}
004eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0051h add rsp,50h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 50}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
