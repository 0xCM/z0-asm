; Vector128<int> vputcell<int>(int src, int index, Vector128<int> dst)
; vputcell__128x32i[7ff7c7203a30h, 7ff7c7203a71h][65] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 04 73 24 c5 f9 29 44 24 20 48 8d 44 24 20 4d 63 c0 42 89 14 80 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 68 f0 19 ff cc}
; Capture completion code, INTRx2
; 2020-01-25 02:11:11:280
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0010h jae short 0036h                         ; JAE rel8 || 73 cb || encoded[2]{73 24}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*4],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[4]{42 89 14 80}
0024h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003bh call 7ff7c63a2ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 f0 19 ff}
0040h int 3                                   ; INT3 || CC || encoded[1]{cc}
