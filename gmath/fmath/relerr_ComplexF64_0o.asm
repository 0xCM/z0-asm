; double relerr(ComplexF64 lhs, ComplexF64 rhs)
; relerr_ComplexF64_0o[7ff7c718b8e0h, 7ff7c718b977h][151] = {48 83 ec 28 c5 f8 77 33 c0 48 89 44 24 20 48 89 44 24 10 c5 fb 10 01 c5 fb 10 0a c5 f8 28 d0 c5 eb 5c d1 c5 eb 5e d0 c5 fb 11 54 24 18 48 8b 44 24 18 48 89 44 24 20 48 8d 44 24 20 49 b8 ff ff ff ff ff ff ff 7f 4c 21 00 c5 fb 10 44 24 20 c5 fb 10 49 08 c5 fb 10 52 08 c5 f8 28 d9 c5 e3 5c da c5 e3 5e d9 c5 fb 11 5c 24 08 48 8b 44 24 08 48 89 44 24 10 48 8d 44 24 10 4c 21 00 c5 fb 10 4c 24 10 c5 f9 2e c1 77 09 c5 f8 28 c1 48 83 c4 28 c3 48 83 c4 28 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:37:813
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
