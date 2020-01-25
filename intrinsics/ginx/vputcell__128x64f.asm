; Vector128<double> vputcell<double>(double src, int index, Vector128<double> dst)
; vputcell__128x64f[7ff7c7203fb0h, 7ff7c7203ff2h][66] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 02 73 25 c5 f9 29 44 24 20 48 8d 44 24 20 49 63 d0 c5 fb 11 0c d0 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 e7 ea 19 ff cc}
; Capture completion code, INTRx2
; 2020-01-25 02:11:11:287
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,2                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 02}
0010h jae short 0037h                         ; JAE rel8 || 73 cb || encoded[2]{73 25}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0020h vmovsd qword ptr [rax+rdx*8],xmm1       ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 0c d0}
0025h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003ch call 7ff7c63a2ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 ea 19 ff}
0041h int 3                                   ; INT3 || CC || encoded[1]{cc}
