------------------------------------------------------------------------------------------------------------------------
; float abs(float a), hex://gmath/fmath?abs#abs_(32f)
; abs_(32f)[50] = {0x48,0x83,0xec,0x18,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x10,0xc5,0xfa,0x11,0x44,0x24,0x08,0x8b,0x44,0x24,0x08,0x89,0x44,0x24,0x10,0x48,0x8d,0x44,0x24,0x10,0x81,0x20,0xff,0xff,0xff,0x7f,0xc5,0xfa,0x10,0x44,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
000eh vmovss dword ptr [rsp+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 08}
0014h mov eax,[rsp+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 08}
0018h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
001ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0021h and dword ptr [rax],7fffffffh           ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 20 ff ff ff 7f}
0027h vmovss xmm0,dword ptr [rsp+10h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 10}
002dh add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double abs(double a), hex://gmath/fmath?abs#abs_(64f)
; abs_(64f)[59] = {0x48,0x83,0xec,0x18,0xc5,0xf8,0x77,0x33,0xc0,0x48,0x89,0x44,0x24,0x10,0xc5,0xfb,0x11,0x44,0x24,0x08,0x48,0x8b,0x44,0x24,0x08,0x48,0x89,0x44,0x24,0x10,0x48,0x8d,0x44,0x24,0x10,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,0x48,0x21,0x10,0xc5,0xfb,0x10,0x44,0x24,0x10,0x48,0x83,0xc4,0x18,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
000eh vmovsd qword ptr [rsp+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 08}
0014h mov rax,[rsp+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 08}
0019h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
001eh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0023h mov rdx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff 7f}
002dh and [rax],rdx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 10}
0030h vmovsd xmm0,qword ptr [rsp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 10}
0036h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float add(float lhs, float rhs), hex://gmath/fmath?add#add_(32f,32f)
; add_(32f,32f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x58,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddss xmm0,xmm0,xmm1                   ; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[4]{c5 fa 58 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double add(double lhs, double rhs), hex://gmath/fmath?add#add_(64f,64f)
; add_(64f,64f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x58,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddsd xmm0,xmm0,xmm1                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 fb 58 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float ceil(float src), hex://gmath/fmath?ceil#ceil_(32f)
; ceil_(32f)[12] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x0a,0xc0,0x0a,0xc3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundss xmm0,xmm0,xmm0,0ah             ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 0a}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double ceil(double src), hex://gmath/fmath?ceil#ceil_(64f)
; ceil_(64f)[12] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x0b,0xc0,0x0a,0xc3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundsd xmm0,xmm0,xmm0,0ah             ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 0a}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float clamp(float src, float max), hex://gmath/fmath?clamp#clamp_(32f,32f)
; clamp_(32f,32f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x2e,0xc1,0x77,0x01,0xc3,0xc5,0xf8,0x28,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h ja short 000ch                          ; JA rel8 || 77 cb || encoded[2]{77 01}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double clamp(double src, double max), hex://gmath/fmath?clamp#clamp_(64f,64f)
; clamp_(64f,64f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x2e,0xc1,0x77,0x01,0xc3,0xc5,0xf8,0x28,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h ja short 000ch                          ; JA rel8 || 77 cb || encoded[2]{77 01}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float dec(float src), hex://gmath/fmath?dec#dec_(32f)
; dec_(32f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5c,0x05,0x03,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubss xmm0,xmm0,dword ptr [rip+3]      ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[8]{c5 fa 5c 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double dec(double src), hex://gmath/fmath?dec#dec_(64f)
; dec_(64f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x5c,0x05,0x03,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubsd xmm0,xmm0,qword ptr [rip+3]      ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[8]{c5 fb 5c 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(double a, double b), hex://gmath/fmath?dist#dist_(64f,64f)
; dist_(64f,64f)[47] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0xc5,0xf9,0x2e,0xc1,0x73,0x13,0xc5,0xf3,0x5c,0xc8,0xc5,0xf8,0x28,0xc1,0xe8,0x36,0xa0,0xfa,0x5e,0x90,0x48,0x83,0xc4,0x28,0xc3,0xc5,0xfb,0x5c,0xc1,0xe8,0x27,0xa0,0xfa,0x5e,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
000bh jae short 0020h                         ; JAE rel8 || 73 cb || encoded[2]{73 13}
000dh vsubsd xmm1,xmm1,xmm0                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 f3 5c c8}
0011h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0015h call 7ff82738d940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 a0 fa 5e}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
0020h vsubsd xmm0,xmm0,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 fb 5c c1}
0024h call 7ff82738d940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 a0 fa 5e}
0029h nop                                     ; NOP || o32 90 || encoded[1]{90}
002ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float div(float a, float b), hex://gmath/fmath?div#div_(32f,32f)
; div_(32f,32f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5e,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vdivss xmm0,xmm0,xmm1                   ; VDIVSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5E /r || encoded[4]{c5 fa 5e c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double div(double a, double b), hex://gmath/fmath?div#div_(64f,64f)
; div_(64f,64f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x5e,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vdivsd xmm0,xmm0,xmm1                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 fb 5e c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(float a, float b), hex://gmath/fmath?divides#divides_(32f,32f)
; divides_(32f,32f)[48] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0xc5,0xf8,0x28,0xd0,0xc5,0xf8,0x28,0xc1,0xc5,0xf8,0x28,0xca,0xe8,0xc8,0xdc,0xfa,0x5e,0xc5,0xf0,0x57,0xc9,0xc5,0xf8,0x2e,0xc1,0x0f,0x9b,0xc0,0x7a,0x03,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
0013h call 7ff827391660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 dc fa 5e}
0018h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
001ch vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0020h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0023h jp short 0028h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0025h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(double a, double b), hex://gmath/fmath?divides#divides_(64f,64f)
; divides_(64f,64f)[48] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0xc5,0xf8,0x28,0xd0,0xc5,0xf8,0x28,0xc1,0xc5,0xf8,0x28,0xca,0xe8,0xe8,0xdb,0xfa,0x5e,0xc5,0xf0,0x57,0xc9,0xc5,0xf9,0x2e,0xc1,0x0f,0x9b,0xc0,0x7a,0x03,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
0013h call 7ff8273915d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 db fa 5e}
0018h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
001ch vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0020h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0023h jp short 0028h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0025h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float floor(float src), hex://gmath/fmath?floor#floor_(32f)
; floor_(32f)[12] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x0a,0xc0,0x09,0xc3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundss xmm0,xmm0,xmm0,9               ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 09}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double floor(double src), hex://gmath/fmath?floor#floor_(64f)
; floor_(64f)[12] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x0b,0xc0,0x09,0xc3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundsd xmm0,xmm0,xmm0,9               ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 09}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float fma(float x, float y, float z), hex://gmath/fmath?fma#fma_(32f,32f,32f)
; fma_(32f,32f,32f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe2,0x71,0xa9,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vfmadd213ss xmm0,xmm1,xmm2              ; VFMADD213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 A9 /r || encoded[5]{c4 e2 71 a9 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fma(double x, double y, double z), hex://gmath/fmath?fma#fma_(64f,64f,64f)
; fma_(64f,64f,64f)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe2,0xf1,0xa9,0xc2,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vfmadd213sd xmm0,xmm1,xmm2              ; VFMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 A9 /r || encoded[5]{c4 e2 f1 a9 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float inc(float src), hex://gmath/fmath?inc#inc_(32f)
; inc_(32f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x58,0x05,0x03,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddss xmm0,xmm0,dword ptr [rip+3]      ; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[8]{c5 fa 58 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double inc(double src), hex://gmath/fmath?inc#inc_(64f)
; inc_(64f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x58,0x05,0x03,0x00,0x00,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddsd xmm0,xmm0,qword ptr [rip+3]      ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float mul(float lhs, float rhs), hex://gmath/fmath?mul#mul_(32f,32f)
; mul_(32f,32f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x59,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulss xmm0,xmm0,xmm1                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double mul(double lhs, double rhs), hex://gmath/fmath?mul#mul_(64f,64f)
; mul_(64f,64f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x59,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulsd xmm0,xmm0,xmm1                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float negate(float src), hex://gmath/fmath?negate#negate_(32f)
; negate_(32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x10,0x0d,0x0b,0x00,0x00,0x00,0xc5,0xf8,0x57,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss xmm1,dword ptr [rip+0bh]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 0d 0b 00 00 00}
000dh vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double negate(double src), hex://gmath/fmath?negate#negate_(64f)
; negate_(64f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x10,0x0d,0x0b,0x00,0x00,0x00,0xc5,0xf8,0x57,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm1,qword ptr [rip+0bh]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 0d 0b 00 00 00}
000dh vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(float src), hex://gmath/fmath?signum#signum_(32f)
; signum_(32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0xb8,0xb8,0x4f,0xa3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c7a34fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 4f a3 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(double src), hex://gmath/fmath?signum#signum_(64f)
; signum_(64f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0xb8,0x90,0x4f,0xa3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c7a34f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 4f a3 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; float square(float src), hex://gmath/fmath?square#square_(32f)
; square_(32f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x59,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulss xmm0,xmm0,xmm0                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double square(double src), hex://gmath/fmath?square#square_(64f)
; square_(64f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x59,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulsd xmm0,xmm0,xmm0                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float sqrt(float src), hex://gmath/fmath?sqrt#sqrt_(32f)
; sqrt_(32f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x51,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsqrtss xmm0,xmm0,xmm0                  ; VSQRTSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 51 /r || encoded[4]{c5 fa 51 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double sqrt(double src), hex://gmath/fmath?sqrt#sqrt_(64f)
; sqrt_(64f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x51,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsqrtsd xmm0,xmm0,xmm0                  ; VSQRTSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 51 /r || encoded[4]{c5 fb 51 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float sub(float a, float b), hex://gmath/fmath?sub#sub_(32f,32f)
; sub_(32f,32f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x5c,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubss xmm0,xmm0,xmm1                   ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[4]{c5 fa 5c c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double sub(double a, double b), hex://gmath/fmath?sub#sub_(64f,64f)
; sub_(64f,64f)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x5c,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubsd xmm0,xmm0,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 fb 5c c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between(float x, float a, float b), hex://gmath/fmath?between#between_(32f,32f,32f)
; between_(32f,32f,32f)[29] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x2e,0xc1,0x72,0x0c,0xc5,0xf8,0x2e,0xd0,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xeb,0x02,0x33,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h jb short 0017h                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
000bh vucomiss xmm2,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e d0}
000fh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between(double x, double a, double b), hex://gmath/fmath?between#between_(64f,64f,64f)
; between_(64f,64f,64f)[29] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x2e,0xc1,0x72,0x0c,0xc5,0xf9,0x2e,0xd0,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xeb,0x02,0x33,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h jb short 0017h                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
000bh vucomisd xmm2,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e d0}
000fh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool fcmp(float x, float y, FpCmpMode:byte mode), hex://gmath/fmath?fcmp#fcmp_(32f,32f,FpCmpMode~8u)
; fcmp_(32f,32f,FpCmpMode~8u)[453] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x41,0x0f,0xb6,0xc0,0x83,0xf8,0x1e,0x0f,0x87,0x8e,0x01,0x00,0x00,0x8b,0xc0,0x48,0x8d,0x0d,0xc2,0x01,0x00,0x00,0x8b,0x0c,0x81,0x48,0x8d,0x15,0xe0,0xff,0xff,0xff,0x48,0x03,0xca,0xff,0xe1,0xc5,0xf8,0x2e,0xc1,0x0f,0x9b,0xc0,0x7a,0x03,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xe9,0x5c,0x01,0x00,0x00,0xc5,0xf8,0x2e,0xc1,0x0f,0x9b,0xc0,0x7a,0x03,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xe9,0x48,0x01,0x00,0x00,0xc5,0xf8,0x2e,0xc1,0x0f,0x9b,0xc0,0x7a,0x03,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xe9,0x34,0x01,0x00,0x00,0xc5,0xf8,0x2e,0xc1,0x0f,0x9b,0xc0,0x7a,0x03,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xe9,0x20,0x01,0x00,0x00,0xc5,0xf8,0x2e,0xc1,0x0f,0x9a,0xc0,0x7a,0x03,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xe9,0x0c,0x01,0x00,0x00,0xc5,0xf8,0x2e,0xc1,0x0f,0x9a,0xc0,0x7a,0x03,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xe9,0xf8,0x00,0x00,0x00,0xc5,0xf8,0x2e,0xc1,0x0f,0x9a,0xc0,0x7a,0x03,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xe9,0xe4,0x00,0x00,0x00,0xc5,0xf8,0x2e,0xc1,0x0f,0x9a,0xc0,0x7a,0x03,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xe9,0xd0,0x00,0x00,0x00,0xc5,0xf8,0x2e,0xc8,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xe9,0xc1,0x00,0x00,0x00,0xc5,0xf8,0x2e,0xc8,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xe9,0xb2,0x00,0x00,0x00,0xc5,0xf8,0x2e,0xc1,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xe9,0xa3,0x00,0x00,0x00,0xc5,0xf8,0x2e,0xc1,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xe9,0x94,0x00,0x00,0x00,0xc5,0xf8,0x2e,0xc8,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xe9,0x85,0x00,0x00,0x00,0xc5,0xf8,0x2e,0xc8,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xe9,0x76,0x00,0x00,0x00,0xc5,0xf8,0x2e,0xc1,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xeb,0x6a,0xc5,0xf8,0x2e,0xc1,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xeb,0x5e,0xc5,0xf8,0x2e,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xeb,0x52,0xc5,0xf8,0x2e,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xeb,0x46,0xc5,0xf8,0x2e,0xc1,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xeb,0x3a,0xc5,0xf8,0x2e,0xc1,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xeb,0x2e,0xc5,0xf8,0x2e,0xc8,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xeb,0x22,0xc5,0xf8,0x2e,0xc8,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xeb,0x16,0xc5,0xf8,0x2e,0xc8,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xeb,0x0a,0xc5,0xf8,0x2e,0xc8,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5e,0xc3,0x48,0xb9,0xf0,0x53,0x99,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xde,0x2d,0xe8,0x5e,0x48,0x8b,0xf0,0x48,0x8b,0xce,0xe8,0xc3,0x5e,0x39,0xff,0x48,0x8b,0xce,0xe8,0x1b,0x7a,0xdf,0x5e}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
000ch cmp eax,1eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 1e}
000fh ja near ptr 01a3h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 8e 01 00 00}
0015h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0017h lea rcx,[rip+1c2h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d c2 01 00 00}
001eh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0021h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0028h add rcx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 ca}
002bh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002dh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0031h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0034h jp short 0039h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0036h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0039h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
003ch jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5c 01 00 00}
0041h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0045h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0048h jp short 004dh                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
004ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
004dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0050h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 48 01 00 00}
0055h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0059h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
005ch jp short 0061h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
005eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0061h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0064h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 34 01 00 00}
0069h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
006dh setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0070h jp short 0075h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0072h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0075h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0078h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 01 00 00}
007dh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0081h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0084h jp short 0089h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0086h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0089h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
008ch jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0c 01 00 00}
0091h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0095h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0098h jp short 009dh                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
009ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
009dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a0h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f8 00 00 00}
00a5h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
00a9h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
00ach jp short 00b1h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
00aeh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
00b1h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b4h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e4 00 00 00}
00b9h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
00bdh setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
00c0h jp short 00c5h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
00c2h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
00c5h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00c8h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d0 00 00 00}
00cdh vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
00d1h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
00d4h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00d7h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 00 00 00}
00dch vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
00e0h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
00e3h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00e6h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00ebh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
00efh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
00f2h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00f5h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a3 00 00 00}
00fah vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
00feh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0101h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0104h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 94 00 00 00}
0109h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
010dh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0110h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0113h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 00 00 00}
0118h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
011ch setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
011fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0122h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 00 00 00}
0127h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
012bh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
012eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0131h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
0133h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0137h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
013ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
013dh jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
013fh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0143h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0146h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0149h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014bh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
014fh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0152h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0155h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
0157h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
015bh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
015eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0161h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0163h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0167h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
016ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
016dh jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
016fh vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0173h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0176h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0179h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
017bh vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
017fh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0182h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0185h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 16}
0187h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
018bh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
018eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0191h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0193h vucomiss xmm1,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c8}
0197h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
019ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
019dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a2h ret                                     ; RET || C3 || encoded[1]{c3}
01a3h mov rcx,7ff7c79953f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 53 99 c7 f7 7f 00 00}
01adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 2d e8 5e}
01b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b8h call 7ff7c7779da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 5e 39 ff}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 7a df 5e}
------------------------------------------------------------------------------------------------------------------------
; bool fcmp(double x, double y, FpCmpMode:byte mode), hex://gmath/fmath?fcmp#fcmp_(64f,64f,FpCmpMode~8u)
; fcmp_(64f,64f,FpCmpMode~8u)[453] = {0x56,0x48,0x83,0xec,0x20,0xc5,0xf8,0x77,0x41,0x0f,0xb6,0xc0,0x83,0xf8,0x1e,0x0f,0x87,0x8e,0x01,0x00,0x00,0x8b,0xc0,0x48,0x8d,0x0d,0xc2,0x01,0x00,0x00,0x8b,0x0c,0x81,0x48,0x8d,0x15,0xe0,0xff,0xff,0xff,0x48,0x03,0xca,0xff,0xe1,0xc5,0xf9,0x2e,0xc1,0x0f,0x9b,0xc0,0x7a,0x03,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xe9,0x5c,0x01,0x00,0x00,0xc5,0xf9,0x2e,0xc1,0x0f,0x9b,0xc0,0x7a,0x03,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xe9,0x48,0x01,0x00,0x00,0xc5,0xf9,0x2e,0xc1,0x0f,0x9b,0xc0,0x7a,0x03,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xe9,0x34,0x01,0x00,0x00,0xc5,0xf9,0x2e,0xc1,0x0f,0x9b,0xc0,0x7a,0x03,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xe9,0x20,0x01,0x00,0x00,0xc5,0xf9,0x2e,0xc1,0x0f,0x9a,0xc0,0x7a,0x03,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xe9,0x0c,0x01,0x00,0x00,0xc5,0xf9,0x2e,0xc1,0x0f,0x9a,0xc0,0x7a,0x03,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xe9,0xf8,0x00,0x00,0x00,0xc5,0xf9,0x2e,0xc1,0x0f,0x9a,0xc0,0x7a,0x03,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xe9,0xe4,0x00,0x00,0x00,0xc5,0xf9,0x2e,0xc1,0x0f,0x9a,0xc0,0x7a,0x03,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xe9,0xd0,0x00,0x00,0x00,0xc5,0xf9,0x2e,0xc8,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xe9,0xc1,0x00,0x00,0x00,0xc5,0xf9,0x2e,0xc8,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xe9,0xb2,0x00,0x00,0x00,0xc5,0xf9,0x2e,0xc1,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xe9,0xa3,0x00,0x00,0x00,0xc5,0xf9,0x2e,0xc1,0x0f,0x97,0xc0,0x0f,0xb6,0xc0,0xe9,0x94,0x00,0x00,0x00,0xc5,0xf9,0x2e,0xc8,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xe9,0x85,0x00,0x00,0x00,0xc5,0xf9,0x2e,0xc8,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xe9,0x76,0x00,0x00,0x00,0xc5,0xf9,0x2e,0xc1,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xeb,0x6a,0xc5,0xf9,0x2e,0xc1,0x0f,0x93,0xc0,0x0f,0xb6,0xc0,0xeb,0x5e,0xc5,0xf9,0x2e,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xeb,0x52,0xc5,0xf9,0x2e,0xc1,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xeb,0x46,0xc5,0xf9,0x2e,0xc1,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xeb,0x3a,0xc5,0xf9,0x2e,0xc1,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xeb,0x2e,0xc5,0xf9,0x2e,0xc8,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xeb,0x22,0xc5,0xf9,0x2e,0xc8,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xeb,0x16,0xc5,0xf9,0x2e,0xc8,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xeb,0x0a,0xc5,0xf9,0x2e,0xc8,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0x48,0x83,0xc4,0x20,0x5e,0xc3,0x48,0xb9,0xf0,0x53,0x99,0xc7,0xf7,0x7f,0x00,0x00,0xe8,0xce,0x28,0xe8,0x5e,0x48,0x8b,0xf0,0x48,0x8b,0xce,0xe8,0xb3,0x59,0x39,0xff,0x48,0x8b,0xce,0xe8,0x0b,0x75,0xdf,0x5e}
; TermCode = CTC_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
000ch cmp eax,1eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 1e}
000fh ja near ptr 01a3h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 8e 01 00 00}
0015h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0017h lea rcx,[rip+1c2h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d c2 01 00 00}
001eh mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
0021h lea rdx,[rip-20h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 15 e0 ff ff ff}
0028h add rcx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 ca}
002bh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
002dh vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0031h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0034h jp short 0039h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0036h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0039h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
003ch jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5c 01 00 00}
0041h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0045h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0048h jp short 004dh                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
004ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
004dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0050h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 48 01 00 00}
0055h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0059h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
005ch jp short 0061h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
005eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0061h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0064h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 34 01 00 00}
0069h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
006dh setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0070h jp short 0075h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0072h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0075h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0078h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 01 00 00}
007dh vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0081h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0084h jp short 0089h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0086h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
0089h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
008ch jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0c 01 00 00}
0091h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0095h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
0098h jp short 009dh                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
009ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
009dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a0h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f8 00 00 00}
00a5h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
00a9h setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
00ach jp short 00b1h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
00aeh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
00b1h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00b4h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e4 00 00 00}
00b9h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
00bdh setp al                                 ; SETP r/m8 || 0F 9A /r || encoded[3]{0f 9a c0}
00c0h jp short 00c5h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
00c2h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
00c5h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00c8h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d0 00 00 00}
00cdh vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
00d1h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
00d4h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00d7h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 00 00 00}
00dch vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
00e0h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
00e3h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00e6h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 00 00 00}
00ebh vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
00efh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
00f2h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00f5h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a3 00 00 00}
00fah vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
00feh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0101h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0104h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 94 00 00 00}
0109h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
010dh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
0110h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0113h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 00 00 00}
0118h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
011ch setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
011fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0122h jmp near ptr 019dh                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 00 00 00}
0127h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
012bh setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
012eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0131h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
0133h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0137h setae al                                ; SETAE r/m8 || 0F 93 /r || encoded[3]{0f 93 c0}
013ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
013dh jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
013fh vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0143h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0146h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0149h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014bh vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
014fh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0152h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0155h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
0157h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
015bh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
015eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0161h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 3a}
0163h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0167h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
016ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
016dh jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
016fh vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
0173h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0176h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0179h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
017bh vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
017fh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0182h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0185h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 16}
0187h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
018bh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
018eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0191h jmp short 019dh                         ; JMP rel8 || EB cb || encoded[2]{eb 0a}
0193h vucomisd xmm1,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c8}
0197h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
019ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
019dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
01a1h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01a2h ret                                     ; RET || C3 || encoded[1]{c3}
01a3h mov rcx,7ff7c79953f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 53 99 c7 f7 7f 00 00}
01adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 28 e8 5e}
01b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b8h call 7ff7c7779da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 59 39 ff}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 75 df 5e}
------------------------------------------------------------------------------------------------------------------------
; float exp(float pow), hex://gmath/fmath?exp#exp_(32f)
; exp_(32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0xb8,0x70,0x8c,0x4b,0x27,0xf8,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 8c 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; double exp(double pow), hex://gmath/fmath?exp#exp_(64f)
; exp_(64f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0xb8,0x60,0x8e,0x4b,0x27,0xf8,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 8e 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; float gcd(float a, float b), hex://gmath/fmath?gcd#gcd_(32f,32f)
; gcd_(32f,32f)[167] = {0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0xc5,0xf8,0x29,0x7c,0x24,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x28,0xc5,0xfa,0x11,0x44,0x24,0x30,0x8b,0x44,0x24,0x30,0x89,0x44,0x24,0x38,0x48,0x8d,0x44,0x24,0x38,0x81,0x20,0xff,0xff,0xff,0x7f,0xc5,0xfa,0x10,0x44,0x24,0x38,0xc5,0xfa,0x11,0x4c,0x24,0x20,0x8b,0x44,0x24,0x20,0x89,0x44,0x24,0x28,0x48,0x8d,0x44,0x24,0x28,0x81,0x20,0xff,0xff,0xff,0x7f,0xc5,0xfa,0x10,0x74,0x24,0x28,0xc5,0xf0,0x57,0xc9,0xc5,0xf8,0x2e,0xf1,0x7a,0x02,0x74,0x38,0xc5,0xf8,0x28,0xce,0xe8,0xee,0xd0,0xfa,0x5e,0xc5,0xf8,0x28,0xf8,0xc5,0xf8,0x57,0xc0,0xc5,0xf8,0x2e,0xf8,0x7a,0x17,0x75,0x15,0xc5,0xf8,0x28,0xc6,0xc5,0xf8,0x28,0x74,0x24,0x50,0xc5,0xf8,0x28,0x7c,0x24,0x40,0x48,0x83,0xc4,0x68,0xc3,0xc5,0xf8,0x28,0xc6,0xc5,0xf8,0x28,0xf7,0xeb,0xc8,0xc5,0xf8,0x28,0xf0,0xeb,0xdb}
; TermCode = CTC_INTRx2
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000dh vmovaps [rsp+40h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 40}
0013h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0015h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
001ah mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001fh vmovss dword ptr [rsp+30h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 30}
0025h mov eax,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 30}
0029h mov [rsp+38h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 38}
002dh lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0032h and dword ptr [rax],7fffffffh           ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 20 ff ff ff 7f}
0038h vmovss xmm0,dword ptr [rsp+38h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 38}
003eh vmovss dword ptr [rsp+20h],xmm1         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 4c 24 20}
0044h mov eax,[rsp+20h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 20}
0048h mov [rsp+28h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 28}
004ch lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0051h and dword ptr [rax],7fffffffh           ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 20 ff ff ff 7f}
0057h vmovss xmm6,dword ptr [rsp+28h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 74 24 28}
005dh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0061h vucomiss xmm6,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e f1}
0065h jp short 0069h                          ; JP rel8 || 7A cb || encoded[2]{7a 02}
0067h je short 00a1h                          ; JE rel8 || 74 cb || encoded[2]{74 38}
0069h vmovaps xmm1,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ce}
006dh call 7ff827391660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee d0 fa 5e}
0072h vmovaps xmm7,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 f8}
0076h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
007ah vucomiss xmm7,xmm0                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e f8}
007eh jp short 0097h                          ; JP rel8 || 7A cb || encoded[2]{7a 17}
0080h jne short 0097h                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
0082h vmovaps xmm0,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c6}
0086h vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
008ch vmovaps xmm7,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 40}
0092h add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0096h ret                                     ; RET || C3 || encoded[1]{c3}
0097h vmovaps xmm0,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c6}
009bh vmovaps xmm6,xmm7                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 f7}
009fh jmp short 0069h                         ; JMP rel8 || EB cb || encoded[2]{eb c8}
00a1h vmovaps xmm6,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 f0}
00a5h jmp short 0082h                         ; JMP rel8 || EB cb || encoded[2]{eb db}
------------------------------------------------------------------------------------------------------------------------
; double gcd(double a, double b), hex://gmath/fmath?gcd#gcd_(64f,64f)
; gcd_(64f,64f)[175] = {0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x50,0xc5,0xf8,0x29,0x7c,0x24,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x38,0x48,0x89,0x44,0x24,0x28,0xc5,0xfb,0x11,0x44,0x24,0x30,0x48,0x8b,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x8d,0x44,0x24,0x38,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,0x48,0x21,0x10,0xc5,0xfb,0x10,0x44,0x24,0x38,0xc5,0xfb,0x11,0x4c,0x24,0x20,0x48,0x8b,0x44,0x24,0x20,0x48,0x89,0x44,0x24,0x28,0x48,0x8d,0x44,0x24,0x28,0x48,0x21,0x10,0xc5,0xfb,0x10,0x74,0x24,0x28,0xc5,0xf0,0x57,0xc9,0xc5,0xf9,0x2e,0xf1,0x7a,0x02,0x74,0x38,0xc5,0xf8,0x28,0xce,0xe8,0x76,0xcf,0xfa,0x5e,0xc5,0xf8,0x28,0xf8,0xc5,0xf8,0x57,0xc0,0xc5,0xf9,0x2e,0xf8,0x7a,0x17,0x75,0x15,0xc5,0xf8,0x28,0xc6,0xc5,0xf8,0x28,0x74,0x24,0x50,0xc5,0xf8,0x28,0x7c,0x24,0x40,0x48,0x83,0xc4,0x68,0xc3,0xc5,0xf8,0x28,0xc6,0xc5,0xf8,0x28,0xf7,0xeb,0xc8,0xc5,0xf8,0x28,0xf0,0xeb,0xdb}
; TermCode = CTC_INTRx2
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000dh vmovaps [rsp+40h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 40}
0013h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0015h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
001ah mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001fh vmovsd qword ptr [rsp+30h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 30}
0025h mov rax,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 30}
002ah mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
002fh lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0034h mov rdx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff 7f}
003eh and [rax],rdx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 10}
0041h vmovsd xmm0,qword ptr [rsp+38h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 38}
0047h vmovsd qword ptr [rsp+20h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 4c 24 20}
004dh mov rax,[rsp+20h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 20}
0052h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0057h lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
005ch and [rax],rdx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 10}
005fh vmovsd xmm6,qword ptr [rsp+28h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 74 24 28}
0065h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0069h vucomisd xmm6,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e f1}
006dh jp short 0071h                          ; JP rel8 || 7A cb || encoded[2]{7a 02}
006fh je short 00a9h                          ; JE rel8 || 74 cb || encoded[2]{74 38}
0071h vmovaps xmm1,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ce}
0075h call 7ff8273915d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 cf fa 5e}
007ah vmovaps xmm7,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 f8}
007eh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0082h vucomisd xmm7,xmm0                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e f8}
0086h jp short 009fh                          ; JP rel8 || 7A cb || encoded[2]{7a 17}
0088h jne short 009fh                         ; JNE rel8 || 75 cb || encoded[2]{75 15}
008ah vmovaps xmm0,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c6}
008eh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
0094h vmovaps xmm7,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 40}
009ah add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
009fh vmovaps xmm0,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c6}
00a3h vmovaps xmm6,xmm7                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 f7}
00a7h jmp short 0071h                         ; JMP rel8 || EB cb || encoded[2]{eb c8}
00a9h vmovaps xmm6,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 f0}
00adh jmp short 008ah                         ; JMP rel8 || EB cb || encoded[2]{eb db}
------------------------------------------------------------------------------------------------------------------------
; float log2(float src), hex://gmath/fmath?log2#log2_(32f)
; log2_(32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0xb8,0xf0,0x8c,0x4b,0x27,0xf8,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 8c 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; double log2(double src), hex://gmath/fmath?log2#log2_(64f)
; log2_(64f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0xb8,0xb0,0x8e,0x4b,0x27,0xf8,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 8e 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; float ln(float src), hex://gmath/fmath?ln#ln_(32f)
; ln_(32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0xb8,0x00,0x8d,0x4b,0x27,0xf8,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 8d 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; double ln(double src), hex://gmath/fmath?ln#ln_(64f)
; ln_(64f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0xb8,0xc0,0x8e,0x4b,0x27,0xf8,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 8e 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; float log(float src, Nullable<float> b), hex://gmath/fmath?log#log_(32f)
; log_(32f)[50] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x48,0x89,0x54,0x24,0x38,0x48,0x8d,0x44,0x24,0x38,0x0f,0xb6,0x10,0xc5,0xfa,0x10,0x48,0x04,0x84,0xd2,0x75,0x0a,0xc5,0xfa,0x10,0x0d,0x13,0x00,0x00,0x00,0xeb,0x00,0xe8,0x1c,0xf1,0xeb,0xff,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ch lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0011h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0014h vmovss xmm1,dword ptr [rax+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 48 04}
0019h test dl,dl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 d2}
001bh jne short 0027h                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
001dh vmovss xmm1,dword ptr [rip+13h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 0d 13 00 00 00}
0025h jmp short 0027h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0027h call 7ff7c82a38c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c f1 eb ff}
002ch nop                                     ; NOP || o32 90 || encoded[1]{90}
002dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double log(double src, Nullable<double> b), hex://gmath/fmath?log#log_(64f)
; log_(64f)[40] = {0x48,0x83,0xec,0x28,0xc5,0xf8,0x77,0x0f,0xb6,0x02,0xc5,0xfb,0x10,0x4a,0x08,0x84,0xc0,0x75,0x0a,0xc5,0xfb,0x10,0x0d,0x15,0x00,0x00,0x00,0xeb,0x00,0xe8,0x8e,0x06,0x65,0xff,0x90,0x48,0x83,0xc4,0x28,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h movzx eax,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 02}
000ah vmovsd xmm1,qword ptr [rdx+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4a 08}
000fh test al,al                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c0}
0011h jne short 001dh                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
0013h vmovsd xmm1,qword ptr [rip+15h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 0d 15 00 00 00}
001bh jmp short 001dh                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
001dh call 7ff7c7a34e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 06 65 ff}
0022h nop                                     ; NOP || o32 90 || encoded[1]{90}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float pow(float src, float exp), hex://gmath/fmath?pow#pow_(32f,32f)
; pow_(32f,32f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0xb8,0x20,0x8d,0x4b,0x27,0xf8,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 8d 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; double pow(double src, double exp), hex://gmath/fmath?pow#pow_(64f,64f)
; pow_(64f,64f)[18] = {0xc5,0xf8,0x77,0x66,0x90,0x48,0xb8,0xe0,0x8e,0x4b,0x27,0xf8,0x7f,0x00,0x00,0x48,0xff,0xe0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 8e 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; float relerr(float lhs, float rhs), hex://gmath/fmath?relerr#relerr_(32f,32f)
; relerr_(32f,32f)[159] = {0x48,0x83,0xec,0x58,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x40,0xc5,0xf8,0x29,0x7c,0x24,0x30,0xc5,0xfa,0x11,0x44,0x24,0x60,0xc5,0xca,0x5a,0xf0,0xc5,0xc2,0x5a,0xf9,0xc5,0xf9,0x2e,0xf7,0x73,0x0f,0xc5,0xc3,0x5c,0xfe,0xc5,0xf8,0x28,0xc7,0xe8,0x8c,0x90,0xfa,0x5e,0xeb,0x0d,0xc5,0xcb,0x5c,0xf7,0xc5,0xf8,0x28,0xc6,0xe8,0x7d,0x90,0xfa,0x5e,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc0,0x48,0x85,0xc0,0x7d,0x08,0xc5,0xfb,0x58,0x05,0x5f,0x00,0x00,0x00,0xc5,0xfb,0x5a,0xc0,0xc5,0xfa,0x5e,0x44,0x24,0x60,0xc5,0xfa,0x11,0x44,0x24,0x2c,0x8b,0x44,0x24,0x2c,0x25,0xff,0xff,0xff,0x7f,0x3d,0x00,0x00,0x80,0x7f,0x7f,0x11,0xc5,0xf8,0x28,0x74,0x24,0x40,0xc5,0xf8,0x28,0x7c,0x24,0x30,0x48,0x83,0xc4,0x58,0xc3,0xc5,0xf8,0x57,0xc0,0xc5,0xf8,0x28,0x74,0x24,0x40,0xc5,0xf8,0x28,0x7c,0x24,0x30,0x48,0x83,0xc4,0x58,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+40h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 40}
000dh vmovaps [rsp+30h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 30}
0013h vmovss dword ptr [rsp+60h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 60}
0019h vcvtss2sd xmm6,xmm6,xmm0                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 ca 5a f0}
001dh vcvtss2sd xmm7,xmm7,xmm1                ; VCVTSS2SD xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5A /r || encoded[4]{c5 c2 5a f9}
0021h vucomisd xmm6,xmm7                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e f7}
0025h jae short 0036h                         ; JAE rel8 || 73 cb || encoded[2]{73 0f}
0027h vsubsd xmm7,xmm7,xmm6                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 c3 5c fe}
002bh vmovaps xmm0,xmm7                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c7}
002fh call 7ff82738d940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 90 fa 5e}
0034h jmp short 0043h                         ; JMP rel8 || EB cb || encoded[2]{eb 0d}
0036h vsubsd xmm6,xmm6,xmm7                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 cb 5c f7}
003ah vmovaps xmm0,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c6}
003eh call 7ff82738d940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 90 fa 5e}
0043h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0047h vcvtsi2sd xmm0,xmm0,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c0}
004ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004fh jge short 0059h                         ; JGE rel8 || 7D cb || encoded[2]{7d 08}
0051h vaddsd xmm0,xmm0,qword ptr [rip+5fh]    ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 5f 00 00 00}
0059h vcvtsd2ss xmm0,xmm0,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 fb 5a c0}
005dh vdivss xmm0,xmm0,[rsp+60h]              ; VDIVSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5E /r || encoded[6]{c5 fa 5e 44 24 60}
0063h vmovss dword ptr [rsp+2ch],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 2c}
0069h mov eax,[rsp+2ch]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 2c}
006dh and eax,7fffffffh                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff ff ff 7f}
0072h cmp eax,7f800000h                       ; CMP EAX, imm32 || o32 3D id || encoded[5]{3d 00 00 80 7f}
0077h jg short 008ah                          ; JG rel8 || 7F cb || encoded[2]{7f 11}
0079h vmovaps xmm6,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 40}
007fh vmovaps xmm7,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 30}
0085h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0089h ret                                     ; RET || C3 || encoded[1]{c3}
008ah vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
008eh vmovaps xmm6,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 40}
0094h vmovaps xmm7,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 30}
009ah add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double relerr(double lhs, double rhs), hex://gmath/fmath?relerr#relerr_(64f,64f)
; relerr_(64f,64f)[142] = {0x48,0x83,0xec,0x48,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x30,0xc5,0xf8,0x28,0xf0,0xc5,0xf9,0x2e,0xf1,0x73,0x0f,0xc5,0xf8,0x28,0xc1,0xc5,0xfb,0x5c,0xc6,0xe8,0xbc,0x8f,0xfa,0x5e,0xeb,0x0d,0xc5,0xf8,0x28,0xc6,0xc5,0xfb,0x5c,0xc1,0xe8,0xad,0x8f,0xfa,0x5e,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc0,0x48,0x85,0xc0,0x7d,0x08,0xc5,0xfb,0x58,0x05,0x57,0x00,0x00,0x00,0xc5,0xfb,0x5e,0xc6,0xc5,0xfb,0x11,0x44,0x24,0x28,0x48,0x8b,0x44,0x24,0x28,0x48,0xba,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,0x48,0x23,0xc2,0x48,0xba,0x00,0x00,0x00,0x00,0x00,0x00,0xf0,0x7f,0x48,0x3b,0xc2,0x7f,0x0b,0xc5,0xf8,0x28,0x74,0x24,0x30,0x48,0x83,0xc4,0x48,0xc3,0xc5,0xf8,0x57,0xc0,0xc5,0xf8,0x28,0x74,0x24,0x30,0x48,0x83,0xc4,0x48,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000dh vmovaps xmm6,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 f0}
0011h vucomisd xmm6,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e f1}
0015h jae short 0026h                         ; JAE rel8 || 73 cb || encoded[2]{73 0f}
0017h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
001bh vsubsd xmm0,xmm0,xmm6                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 fb 5c c6}
001fh call 7ff82738d940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 8f fa 5e}
0024h jmp short 0033h                         ; JMP rel8 || EB cb || encoded[2]{eb 0d}
0026h vmovaps xmm0,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c6}
002ah vsubsd xmm0,xmm0,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 fb 5c c1}
002eh call 7ff82738d940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 8f fa 5e}
0033h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0037h vcvtsi2sd xmm0,xmm0,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c0}
003ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
003fh jge short 0049h                         ; JGE rel8 || 7D cb || encoded[2]{7d 08}
0041h vaddsd xmm0,xmm0,qword ptr [rip+57h]    ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 57 00 00 00}
0049h vdivsd xmm0,xmm0,xmm6                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 fb 5e c6}
004dh vmovsd qword ptr [rsp+28h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 28}
0053h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
0058h mov rdx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff 7f}
0062h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0065h mov rdx,7ff0000000000000h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 00 00 f0 7f}
006fh cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0072h jg short 007fh                          ; JG rel8 || 7F cb || encoded[2]{7f 0b}
0074h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
007ah add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
007eh ret                                     ; RET || C3 || encoded[1]{c3}
007fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0083h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0089h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
008dh ret                                     ; RET || C3 || encoded[1]{c3}
