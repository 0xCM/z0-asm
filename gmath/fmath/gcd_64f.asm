; double gcd(double a, double b)
; gcd_64f[7ff7c719ded0h, 7ff7c719df80h][176] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 33 c0 48 89 44 24 38 48 89 44 24 28 c5 fb 11 44 24 30 48 8b 44 24 30 48 89 44 24 38 48 8d 44 24 38 48 ba ff ff ff ff ff ff ff 7f 48 21 10 c5 fb 10 44 24 38 c5 fb 11 4c 24 20 48 8b 44 24 20 48 89 44 24 28 48 8d 44 24 28 48 21 10 c5 fb 10 74 24 28 c5 f0 57 c9 c5 f9 2e f1 7a 02 74 38 c5 f8 28 ce e8 86 36 e3 5e c5 f8 28 f8 c5 f8 57 c0 c5 f9 2e f8 7a 17 75 15 c5 f8 28 c6 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 48 83 c4 68 c3 c5 f8 28 c6 c5 f8 28 f7 eb c8 c5 f8 28 f0 eb db cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:56:992
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
0075h call 7ff825fd15d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 36 e3 5e}
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
00afh int 3                                   ; INT3 || CC || encoded[1]{cc}
