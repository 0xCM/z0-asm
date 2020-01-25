; float gcd(float a, float b)
; gcd_32f[7ff7c719ddf0h, 7ff7c719de98h][168] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 33 c0 48 89 44 24 38 48 89 44 24 28 c5 fa 11 44 24 30 8b 44 24 30 89 44 24 38 48 8d 44 24 38 81 20 ff ff ff 7f c5 fa 10 44 24 38 c5 fa 11 4c 24 20 8b 44 24 20 89 44 24 28 48 8d 44 24 28 81 20 ff ff ff 7f c5 fa 10 74 24 28 c5 f0 57 c9 c5 f8 2e f1 7a 02 74 38 c5 f8 28 ce e8 fe 37 e3 5e c5 f8 28 f8 c5 f8 57 c0 c5 f8 2e f8 7a 17 75 15 c5 f8 28 c6 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 48 83 c4 68 c3 c5 f8 28 c6 c5 f8 28 f7 eb c8 c5 f8 28 f0 eb db cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:56:991
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
006dh call 7ff825fd1660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 37 e3 5e}
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
00a7h int 3                                   ; INT3 || CC || encoded[1]{cc}
