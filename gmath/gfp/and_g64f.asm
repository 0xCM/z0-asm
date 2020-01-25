; double and<double>(double a, double b)
; and_g64f[7ff7c71bf0d0h, 7ff7c71bf0fbh][43] = {48 83 ec 18 c5 f8 77 c5 fb 11 44 24 10 48 8b 44 24 10 c5 fb 11 4c 24 08 48 23 44 24 08 48 89 04 24 c5 fb 10 04 24 48 83 c4 18 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:00:489
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovsd qword ptr [rsp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 10}
000dh mov rax,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 10}
0012h vmovsd qword ptr [rsp+8],xmm1           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 4c 24 08}
0018h and rax,[rsp+8]                         ; AND r64, r/m64 || REX.W 23 /r || encoded[5]{48 23 44 24 08}
001dh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0021h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0026h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
