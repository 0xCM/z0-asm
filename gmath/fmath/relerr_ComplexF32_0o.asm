; float relerr(ComplexF32 lhs, ComplexF32 rhs)
; relerr_ComplexF32_0o[7ff7c718b410h, 7ff7c718b4afh][159] = {48 83 ec 28 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 10 48 89 4c 24 30 48 89 54 24 38 c5 fa 10 44 24 30 c5 fa 10 4c 24 38 c5 f8 28 d0 c5 ea 5c d1 c5 ea 5e d0 c5 fa 11 54 24 18 8b 44 24 18 89 44 24 20 48 8d 44 24 20 81 20 ff ff ff 7f c5 fa 10 44 24 20 c5 fa 10 4c 24 34 c5 fa 10 54 24 3c c5 f8 28 d9 c5 e2 5c da c5 e2 5e d9 c5 fa 11 5c 24 08 8b 44 24 08 89 44 24 10 48 8d 44 24 10 81 20 ff ff ff 7f c5 fa 10 4c 24 10 c5 f8 2e c1 77 09 c5 f8 28 c1 48 83 c4 28 c3 48 83 c4 28 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:37:810
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
