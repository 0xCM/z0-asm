------------------------------------------------------------------------------------------------------------------------
; float abs(float a)
; abs_(32f)[50] = {48 83 ec 18 c5 f8 77 33 c0 48 89 44 24 10 c5 fa 11 44 24 08 8b 44 24 08 89 44 24 10 48 8d 44 24 10 81 20 ff ff ff 7f c5 fa 10 44 24 10 48 83 c4 18 c3}
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
; double abs(double a)
; abs_(64f)[59] = {48 83 ec 18 c5 f8 77 33 c0 48 89 44 24 10 c5 fb 11 44 24 08 48 8b 44 24 08 48 89 44 24 10 48 8d 44 24 10 48 ba ff ff ff ff ff ff ff 7f 48 21 10 c5 fb 10 44 24 10 48 83 c4 18 c3}
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
; float add(float lhs, float rhs)
; add_(32f,32f)[10] = {c5 f8 77 66 90 c5 fa 58 c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddss xmm0,xmm0,xmm1                   ; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[4]{c5 fa 58 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double add(double lhs, double rhs)
; add_(64f,64f)[10] = {c5 f8 77 66 90 c5 fb 58 c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddsd xmm0,xmm0,xmm1                   ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[4]{c5 fb 58 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float ceil(float src)
; ceil_(32f)[12] = {c5 f8 77 66 90 c4 e3 79 0a c0 0a c3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundss xmm0,xmm0,xmm0,0ah             ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 0a}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double ceil(double src)
; ceil_(64f)[12] = {c5 f8 77 66 90 c4 e3 79 0b c0 0a c3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundsd xmm0,xmm0,xmm0,0ah             ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 0a}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float clamp(float src, float max)
; clamp_(32f,32f)[17] = {c5 f8 77 66 90 c5 f8 2e c1 77 01 c3 c5 f8 28 c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0009h ja short 000ch                          ; JA rel8 || 77 cb || encoded[2]{77 01}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double clamp(double src, double max)
; clamp_(64f,64f)[17] = {c5 f8 77 66 90 c5 f9 2e c1 77 01 c3 c5 f8 28 c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0009h ja short 000ch                          ; JA rel8 || 77 cb || encoded[2]{77 01}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float dec(float src)
; dec_(32f)[14] = {c5 f8 77 66 90 c5 fa 5c 05 03 00 00 00 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubss xmm0,xmm0,dword ptr [rip+3]      ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[8]{c5 fa 5c 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double dec(double src)
; dec_(64f)[14] = {c5 f8 77 66 90 c5 fb 5c 05 03 00 00 00 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubsd xmm0,xmm0,qword ptr [rip+3]      ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[8]{c5 fb 5c 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(double a, double b)
; dist_(64f,64f)[47] = {48 83 ec 28 c5 f8 77 c5 f9 2e c1 73 13 c5 f3 5c c8 c5 f8 28 c1 e8 a6 d7 63 5f 90 48 83 c4 28 c3 c5 fb 5c c1 e8 97 d7 63 5f 90 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
000bh jae short 0020h                         ; JAE rel8 || 73 cb || encoded[2]{73 13}
000dh vsubsd xmm1,xmm1,xmm0                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 f3 5c c8}
0011h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0015h call 7ff82738d940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 d7 63 5f}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
0020h vsubsd xmm0,xmm0,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 fb 5c c1}
0024h call 7ff82738d940h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 d7 63 5f}
0029h nop                                     ; NOP || o32 90 || encoded[1]{90}
002ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float div(float a, float b)
; div_(32f,32f)[10] = {c5 f8 77 66 90 c5 fa 5e c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vdivss xmm0,xmm0,xmm1                   ; VDIVSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5E /r || encoded[4]{c5 fa 5e c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double div(double a, double b)
; div_(64f,64f)[10] = {c5 f8 77 66 90 c5 fb 5e c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vdivsd xmm0,xmm0,xmm1                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 fb 5e c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(float a, float b)
; divides_(32f,32f)[48] = {48 83 ec 28 c5 f8 77 c5 f8 28 d0 c5 f8 28 c1 c5 f8 28 ca e8 38 14 64 5f c5 f0 57 c9 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
0013h call 7ff827391660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 14 64 5f}
0018h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
001ch vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
0020h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0023h jp short 0028h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0025h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit divides(double a, double b)
; divides_(64f,64f)[48] = {48 83 ec 28 c5 f8 77 c5 f8 28 d0 c5 f8 28 c1 c5 f8 28 ca e8 58 13 64 5f c5 f0 57 c9 c5 f9 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
000bh vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
000fh vmovaps xmm1,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ca}
0013h call 7ff8273915d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 13 64 5f}
0018h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
001ch vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0020h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0023h jp short 0028h                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0025h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0028h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float floor(float src)
; floor_(32f)[12] = {c5 f8 77 66 90 c4 e3 79 0a c0 09 c3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundss xmm0,xmm0,xmm0,9               ; VROUNDSS xmm1, xmm2, xmm3/m32, imm8 || VEX.LIG.66.0F3A.WIG 0A /r ib || encoded[6]{c4 e3 79 0a c0 09}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double floor(double src)
; floor_(64f)[12] = {c5 f8 77 66 90 c4 e3 79 0b c0 09 c3}
; TermCode = CTC_RET_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundsd xmm0,xmm0,xmm0,9               ; VROUNDSD xmm1, xmm2, xmm3/m64, imm8 || VEX.LIG.66.0F3A.WIG 0B /r ib || encoded[6]{c4 e3 79 0b c0 09}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float fma(float x, float y, float z)
; fma_(32f,32f,32f)[11] = {c5 f8 77 66 90 c4 e2 71 a9 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vfmadd213ss xmm0,xmm1,xmm2              ; VFMADD213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 A9 /r || encoded[5]{c4 e2 71 a9 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fma(double x, double y, double z)
; fma_(64f,64f,64f)[11] = {c5 f8 77 66 90 c4 e2 f1 a9 c2 c3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vfmadd213sd xmm0,xmm1,xmm2              ; VFMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 A9 /r || encoded[5]{c4 e2 f1 a9 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float inc(float src)
; inc_(32f)[14] = {c5 f8 77 66 90 c5 fa 58 05 03 00 00 00 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddss xmm0,xmm0,dword ptr [rip+3]      ; VADDSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 58 /r || encoded[8]{c5 fa 58 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double inc(double src)
; inc_(64f)[14] = {c5 f8 77 66 90 c5 fb 58 05 03 00 00 00 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vaddsd xmm0,xmm0,qword ptr [rip+3]      ; VADDSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 58 /r || encoded[8]{c5 fb 58 05 03 00 00 00}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float mul(float lhs, float rhs)
; mul_(32f,32f)[10] = {c5 f8 77 66 90 c5 fa 59 c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulss xmm0,xmm0,xmm1                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double mul(double lhs, double rhs)
; mul_(64f,64f)[10] = {c5 f8 77 66 90 c5 fb 59 c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulsd xmm0,xmm0,xmm1                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float negate(float src)
; negate_(32f)[18] = {c5 f8 77 66 90 c5 fa 10 0d 0b 00 00 00 c5 f8 57 c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss xmm1,dword ptr [rip+0bh]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 0d 0b 00 00 00}
000dh vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double negate(double src)
; negate_(64f)[18] = {c5 f8 77 66 90 c5 fb 10 0d 0b 00 00 00 c5 f8 57 c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd xmm1,qword ptr [rip+0bh]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 0d 0b 00 00 00}
000dh vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(float src)
; signum_(32f)[18] = {c5 f8 77 66 90 48 b8 88 23 79 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c7792388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 23 79 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; Sign:int signum(double src)
; signum_(64f)[18] = {c5 f8 77 66 90 48 b8 60 23 79 c7 f7 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff7c7792360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 23 79 c7 f7 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; float square(float src)
; square_(32f)[10] = {c5 f8 77 66 90 c5 fa 59 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulss xmm0,xmm0,xmm0                   ; VMULSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 59 /r || encoded[4]{c5 fa 59 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double square(double src)
; square_(64f)[10] = {c5 f8 77 66 90 c5 fb 59 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmulsd xmm0,xmm0,xmm0                   ; VMULSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 59 /r || encoded[4]{c5 fb 59 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float sqrt(float src)
; sqrt_(32f)[10] = {c5 f8 77 66 90 c5 fa 51 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsqrtss xmm0,xmm0,xmm0                  ; VSQRTSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 51 /r || encoded[4]{c5 fa 51 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double sqrt(double src)
; sqrt_(64f)[10] = {c5 f8 77 66 90 c5 fb 51 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsqrtsd xmm0,xmm0,xmm0                  ; VSQRTSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 51 /r || encoded[4]{c5 fb 51 c0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float sub(float a, float b)
; sub_(32f,32f)[10] = {c5 f8 77 66 90 c5 fa 5c c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubss xmm0,xmm0,xmm1                   ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[4]{c5 fa 5c c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double sub(double a, double b)
; sub_(64f,64f)[10] = {c5 f8 77 66 90 c5 fb 5c c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsubsd xmm0,xmm0,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 fb 5c c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool fcmp(float x, float y, FpCmpMode:byte mode)
; fcmp_(32f,32f,FpCmpMode~8u)[453] = {56 48 83 ec 20 c5 f8 77 41 0f b6 c0 83 f8 1e 0f 87 8e 01 00 00 8b c0 48 8d 0d c2 01 00 00 8b 0c 81 48 8d 15 e0 ff ff ff 48 03 ca ff e1 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 5c 01 00 00 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 48 01 00 00 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 34 01 00 00 c5 f8 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 20 01 00 00 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 0c 01 00 00 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 f8 00 00 00 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 e4 00 00 00 c5 f8 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 d0 00 00 00 c5 f8 2e c8 0f 97 c0 0f b6 c0 e9 c1 00 00 00 c5 f8 2e c8 0f 97 c0 0f b6 c0 e9 b2 00 00 00 c5 f8 2e c1 0f 97 c0 0f b6 c0 e9 a3 00 00 00 c5 f8 2e c1 0f 97 c0 0f b6 c0 e9 94 00 00 00 c5 f8 2e c8 0f 93 c0 0f b6 c0 e9 85 00 00 00 c5 f8 2e c8 0f 93 c0 0f b6 c0 e9 76 00 00 00 c5 f8 2e c1 0f 93 c0 0f b6 c0 eb 6a c5 f8 2e c1 0f 93 c0 0f b6 c0 eb 5e c5 f8 2e c1 0f 92 c0 0f b6 c0 eb 52 c5 f8 2e c1 0f 92 c0 0f b6 c0 eb 46 c5 f8 2e c1 0f 96 c0 0f b6 c0 eb 3a c5 f8 2e c1 0f 96 c0 0f b6 c0 eb 2e c5 f8 2e c8 0f 92 c0 0f b6 c0 eb 22 c5 f8 2e c8 0f 92 c0 0f b6 c0 eb 16 c5 f8 2e c8 0f 96 c0 0f b6 c0 eb 0a c5 f8 2e c8 0f 96 c0 0f b6 c0 48 83 c4 20 5e c3 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 ae 65 51 5f 48 8b f0 48 8b ce e8 f3 7e a3 ff 48 8b ce e8 eb b1 48 5f}
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
01a3h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 65 51 5f}
01b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b8h call 7ff7c7788600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 7e a3 ff}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb b1 48 5f}
------------------------------------------------------------------------------------------------------------------------
; bool fcmp(double x, double y, FpCmpMode:byte mode)
; fcmp_(64f,64f,FpCmpMode~8u)[453] = {56 48 83 ec 20 c5 f8 77 41 0f b6 c0 83 f8 1e 0f 87 8e 01 00 00 8b c0 48 8d 0d c2 01 00 00 8b 0c 81 48 8d 15 e0 ff ff ff 48 03 ca ff e1 c5 f9 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 5c 01 00 00 c5 f9 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 48 01 00 00 c5 f9 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 34 01 00 00 c5 f9 2e c1 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 e9 20 01 00 00 c5 f9 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 0c 01 00 00 c5 f9 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 f8 00 00 00 c5 f9 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 e4 00 00 00 c5 f9 2e c1 0f 9a c0 7a 03 0f 95 c0 0f b6 c0 e9 d0 00 00 00 c5 f9 2e c8 0f 97 c0 0f b6 c0 e9 c1 00 00 00 c5 f9 2e c8 0f 97 c0 0f b6 c0 e9 b2 00 00 00 c5 f9 2e c1 0f 97 c0 0f b6 c0 e9 a3 00 00 00 c5 f9 2e c1 0f 97 c0 0f b6 c0 e9 94 00 00 00 c5 f9 2e c8 0f 93 c0 0f b6 c0 e9 85 00 00 00 c5 f9 2e c8 0f 93 c0 0f b6 c0 e9 76 00 00 00 c5 f9 2e c1 0f 93 c0 0f b6 c0 eb 6a c5 f9 2e c1 0f 93 c0 0f b6 c0 eb 5e c5 f9 2e c1 0f 92 c0 0f b6 c0 eb 52 c5 f9 2e c1 0f 92 c0 0f b6 c0 eb 46 c5 f9 2e c1 0f 96 c0 0f b6 c0 eb 3a c5 f9 2e c1 0f 96 c0 0f b6 c0 eb 2e c5 f9 2e c8 0f 92 c0 0f b6 c0 eb 22 c5 f9 2e c8 0f 92 c0 0f b6 c0 eb 16 c5 f9 2e c8 0f 96 c0 0f b6 c0 eb 0a c5 f9 2e c8 0f 96 c0 0f b6 c0 48 83 c4 20 5e c3 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 5e 62 51 5f 48 8b f0 48 8b ce e8 a3 7b a3 ff 48 8b ce e8 9b ae 48 5f}
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
01a3h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01adh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 62 51 5f}
01b2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b8h call 7ff7c7788600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 7b a3 ff}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b ae 48 5f}
------------------------------------------------------------------------------------------------------------------------
; float exp(float pow)
; exp_(32f)[18] = {c5 f8 77 66 90 48 b8 70 8c 4b 27 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 8c 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; double exp(double pow)
; exp_(64f)[18] = {c5 f8 77 66 90 48 b8 60 8e 4b 27 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 8e 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; float gcd(float a, float b)
; gcd_(32f,32f)[167] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 33 c0 48 89 44 24 38 48 89 44 24 28 c5 fa 11 44 24 30 8b 44 24 30 89 44 24 38 48 8d 44 24 38 81 20 ff ff ff 7f c5 fa 10 44 24 38 c5 fa 11 4c 24 20 8b 44 24 20 89 44 24 28 48 8d 44 24 28 81 20 ff ff ff 7f c5 fa 10 74 24 28 c5 f0 57 c9 c5 f8 2e f1 7a 02 74 38 c5 f8 28 ce e8 7e 0a 64 5f c5 f8 28 f8 c5 f8 57 c0 c5 f8 2e f8 7a 17 75 15 c5 f8 28 c6 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 48 83 c4 68 c3 c5 f8 28 c6 c5 f8 28 f7 eb c8 c5 f8 28 f0 eb db}
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
006dh call 7ff827391660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 0a 64 5f}
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
; double gcd(double a, double b)
; gcd_(64f,64f)[175] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 33 c0 48 89 44 24 38 48 89 44 24 28 c5 fb 11 44 24 30 48 8b 44 24 30 48 89 44 24 38 48 8d 44 24 38 48 ba ff ff ff ff ff ff ff 7f 48 21 10 c5 fb 10 44 24 38 c5 fb 11 4c 24 20 48 8b 44 24 20 48 89 44 24 28 48 8d 44 24 28 48 21 10 c5 fb 10 74 24 28 c5 f0 57 c9 c5 f9 2e f1 7a 02 74 38 c5 f8 28 ce e8 06 09 64 5f c5 f8 28 f8 c5 f8 57 c0 c5 f9 2e f8 7a 17 75 15 c5 f8 28 c6 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 48 83 c4 68 c3 c5 f8 28 c6 c5 f8 28 f7 eb c8 c5 f8 28 f0 eb db}
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
0075h call 7ff8273915d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 09 64 5f}
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
; float log2(float src)
; log2_(32f)[18] = {c5 f8 77 66 90 48 b8 f0 8c 4b 27 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 8c 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; double log2(double src)
; log2_(64f)[18] = {c5 f8 77 66 90 48 b8 b0 8e 4b 27 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 8e 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; float ln(float src)
; ln_(32f)[18] = {c5 f8 77 66 90 48 b8 00 8d 4b 27 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 8d 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; double ln(double src)
; ln_(64f)[18] = {c5 f8 77 66 90 48 b8 c0 8e 4b 27 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 8e 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; float log(float src, Nullable<float> b)
; log_(32f)[50] = {48 83 ec 28 c5 f8 77 48 89 54 24 38 48 8d 44 24 38 0f b6 10 c5 fa 10 48 04 84 d2 75 0a c5 fa 10 0d 13 00 00 00 eb 00 e8 ec ed ff ff 90 48 83 c4 28 c3}
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
0027h call 7ff7c7d50008h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec ed ff ff}
002ch nop                                     ; NOP || o32 90 || encoded[1]{90}
002dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double log(double src, Nullable<double> b)
; log_(64f)[40] = {48 83 ec 28 c5 f8 77 0f b6 02 c5 fb 10 4a 08 84 c0 75 0a c5 fb 10 0d 15 00 00 00 eb 00 e8 ae ec a3 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h movzx eax,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 02}
000ah vmovsd xmm1,qword ptr [rdx+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4a 08}
000fh test al,al                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c0}
0011h jne short 001dh                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
0013h vmovsd xmm1,qword ptr [rip+15h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 0d 15 00 00 00}
001bh jmp short 001dh                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
001dh call 7ff7c7792250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae ec a3 ff}
0022h nop                                     ; NOP || o32 90 || encoded[1]{90}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float pow(float src, float exp)
; pow_(32f,32f)[18] = {c5 f8 77 66 90 48 b8 20 8d 4b 27 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 8d 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; double pow(double src, double exp)
; pow_(64f,64f)[18] = {c5 f8 77 66 90 48 b8 e0 8e 4b 27 f8 7f 00 00 48 ff e0}
; TermCode = CTC_JMP_RAX
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,7ff8274b8ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 8e 4b 27 f8 7f 00 00}
000fh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
------------------------------------------------------------------------------------------------------------------------
; float relerr(float lhs, float rhs)
; relerr_(32f,32f)[61] = {48 83 ec 18 c5 f8 77 33 c0 89 44 24 10 c5 f8 28 d0 c5 ea 5c d1 c5 ea 5e d0 c5 fa 11 54 24 08 8b 44 24 08 89 44 24 10 48 8d 44 24 10 81 20 ff ff ff 7f c5 fa 10 44 24 10 48 83 c4 18 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
000dh vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0011h vsubss xmm2,xmm2,xmm1                   ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[4]{c5 ea 5c d1}
0015h vdivss xmm2,xmm2,xmm0                   ; VDIVSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5E /r || encoded[4]{c5 ea 5e d0}
0019h vmovss dword ptr [rsp+8],xmm2           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 54 24 08}
001fh mov eax,[rsp+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 08}
0023h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
0027h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
002ch and dword ptr [rax],7fffffffh           ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 20 ff ff ff 7f}
0032h vmovss xmm0,dword ptr [rsp+10h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 10}
0038h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double relerr(double lhs, double rhs)
; relerr_(64f,64f)[71] = {48 83 ec 18 c5 f8 77 33 c0 48 89 44 24 10 c5 f8 28 d0 c5 eb 5c d1 c5 eb 5e d0 c5 fb 11 54 24 08 48 8b 44 24 08 48 89 44 24 10 48 8d 44 24 10 48 ba ff ff ff ff ff ff ff 7f 48 21 10 c5 fb 10 44 24 10 48 83 c4 18 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
000eh vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0012h vsubsd xmm2,xmm2,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 eb 5c d1}
0016h vdivsd xmm2,xmm2,xmm0                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 eb 5e d0}
001ah vmovsd qword ptr [rsp+8],xmm2           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 54 24 08}
0020h mov rax,[rsp+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 08}
0025h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
002ah lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
002fh mov rdx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff 7f}
0039h and [rax],rdx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 10}
003ch vmovsd xmm0,qword ptr [rsp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 10}
0042h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
