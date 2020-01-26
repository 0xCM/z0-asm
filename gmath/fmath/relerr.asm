------------------------------------------------------------------------------------------------------------------------
; float relerr(float lhs, float rhs)
; relerr_32f[61] = {48 83 ec 18 c5 f8 77 33 c0 89 44 24 10 c5 f8 28 d0 c5 ea 5c d1 c5 ea 5e d0 c5 fa 11 54 24 08 8b 44 24 08 89 44 24 10 48 8d 44 24 10 81 20 ff ff ff 7f c5 fa 10 44 24 10 48 83 c4 18 c3}
; Capture completion code = RET_INTRx2
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
; relerr_64f[71] = {48 83 ec 18 c5 f8 77 33 c0 48 89 44 24 10 c5 f8 28 d0 c5 eb 5c d1 c5 eb 5e d0 c5 fb 11 54 24 08 48 8b 44 24 08 48 89 44 24 10 48 8d 44 24 10 48 ba ff ff ff ff ff ff ff 7f 48 21 10 c5 fb 10 44 24 10 48 83 c4 18 c3}
; Capture completion code = RET_INTRx2
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
------------------------------------------------------------------------------------------------------------------------
; float relerr(ComplexF32 lhs, ComplexF32 rhs)
; relerr_ComplexF32_ComplexF32[159] = {48 83 ec 28 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 10 48 89 4c 24 30 48 89 54 24 38 c5 fa 10 44 24 30 c5 fa 10 4c 24 38 c5 f8 28 d0 c5 ea 5c d1 c5 ea 5e d0 c5 fa 11 54 24 18 8b 44 24 18 89 44 24 20 48 8d 44 24 20 81 20 ff ff ff 7f c5 fa 10 44 24 20 c5 fa 10 4c 24 34 c5 fa 10 54 24 3c c5 f8 28 d9 c5 e2 5c da c5 e2 5e d9 c5 fa 11 5c 24 08 8b 44 24 08 89 44 24 10 48 8d 44 24 10 81 20 ff ff ff 7f c5 fa 10 4c 24 10 c5 f8 2e c1 77 09 c5 f8 28 c1 48 83 c4 28 c3 48 83 c4 28 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0013h mov [rsp+30h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 30}
0018h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
001dh vmovss xmm0,dword ptr [rsp+30h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 30}
0023h vmovss xmm1,dword ptr [rsp+38h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 4c 24 38}
0029h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
002dh vsubss xmm2,xmm2,xmm1                   ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[4]{c5 ea 5c d1}
0031h vdivss xmm2,xmm2,xmm0                   ; VDIVSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5E /r || encoded[4]{c5 ea 5e d0}
0035h vmovss dword ptr [rsp+18h],xmm2         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 54 24 18}
003bh mov eax,[rsp+18h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 18}
003fh mov [rsp+20h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 20}
0043h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0048h and dword ptr [rax],7fffffffh           ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 20 ff ff ff 7f}
004eh vmovss xmm0,dword ptr [rsp+20h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 20}
0054h vmovss xmm1,dword ptr [rsp+34h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 4c 24 34}
005ah vmovss xmm2,dword ptr [rsp+3ch]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 3c}
0060h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
0064h vsubss xmm3,xmm3,xmm2                   ; VSUBSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5C /r || encoded[4]{c5 e2 5c da}
0068h vdivss xmm3,xmm3,xmm1                   ; VDIVSS xmm1, xmm2, xmm3/m32 || VEX.LIG.F3.0F.WIG 5E /r || encoded[4]{c5 e2 5e d9}
006ch vmovss dword ptr [rsp+8],xmm3           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 5c 24 08}
0072h mov eax,[rsp+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 08}
0076h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
007ah lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
007fh and dword ptr [rax],7fffffffh           ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 20 ff ff ff 7f}
0085h vmovss xmm1,dword ptr [rsp+10h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 4c 24 10}
008bh vucomiss xmm0,xmm1                      ; VUCOMISS xmm1, xmm2/m32 || VEX.LIG.0F.WIG 2E /r || encoded[4]{c5 f8 2e c1}
008fh ja short 009ah                          ; JA rel8 || 77 cb || encoded[2]{77 09}
0091h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
0095h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0099h ret                                     ; RET || C3 || encoded[1]{c3}
009ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double relerr(ComplexF64 lhs, ComplexF64 rhs)
; relerr_ComplexF64_ComplexF64[151] = {48 83 ec 28 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 10 c5 fb 10 01 c5 fb 10 0a c5 f8 28 d0 c5 eb 5c d1 c5 eb 5e d0 c5 fb 11 54 24 18 48 8b 44 24 18 48 89 44 24 20 48 8d 44 24 20 49 b8 ff ff ff ff ff ff ff 7f 4c 21 00 c5 fb 10 44 24 20 c5 fb 10 49 08 c5 fb 10 52 08 c5 f8 28 d9 c5 e3 5c da c5 e3 5e d9 c5 fb 11 5c 24 08 48 8b 44 24 08 48 89 44 24 10 48 8d 44 24 10 4c 21 00 c5 fb 10 4c 24 10 c5 f9 2e c1 77 09 c5 f8 28 c1 48 83 c4 28 c3 48 83 c4 28 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000eh mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0013h vmovsd xmm0,qword ptr [rcx]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[4]{c5 fb 10 01}
0017h vmovsd xmm1,qword ptr [rdx]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[4]{c5 fb 10 0a}
001bh vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
001fh vsubsd xmm2,xmm2,xmm1                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 eb 5c d1}
0023h vdivsd xmm2,xmm2,xmm0                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 eb 5e d0}
0027h vmovsd qword ptr [rsp+18h],xmm2         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 54 24 18}
002dh mov rax,[rsp+18h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 18}
0032h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0037h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
003ch mov r8,7fffffffffffffffh                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 ff ff ff ff ff ff ff 7f}
0046h and [rax],r8                            ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{4c 21 00}
0049h vmovsd xmm0,qword ptr [rsp+20h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 20}
004fh vmovsd xmm1,qword ptr [rcx+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 49 08}
0054h vmovsd xmm2,qword ptr [rdx+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 52 08}
0059h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
005dh vsubsd xmm3,xmm3,xmm2                   ; VSUBSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5C /r || encoded[4]{c5 e3 5c da}
0061h vdivsd xmm3,xmm3,xmm1                   ; VDIVSD xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5E /r || encoded[4]{c5 e3 5e d9}
0065h vmovsd qword ptr [rsp+8],xmm3           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 5c 24 08}
006bh mov rax,[rsp+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 08}
0070h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0075h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
007ah and [rax],r8                            ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{4c 21 00}
007dh vmovsd xmm1,qword ptr [rsp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 4c 24 10}
0083h vucomisd xmm0,xmm1                      ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[4]{c5 f9 2e c1}
0087h ja short 0092h                          ; JA rel8 || 77 cb || encoded[2]{77 09}
0089h vmovaps xmm0,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c1}
008dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0091h ret                                     ; RET || C3 || encoded[1]{c3}
0092h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0096h ret                                     ; RET || C3 || encoded[1]{c3}
