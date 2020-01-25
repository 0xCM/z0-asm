; bit satisfied<double>(ComparisonExpr<double> expr, double a, double b)
; satisfied__g64f_0obit[7ff7c6e60420h, 7ff7c6e60494h][116] = {56 48 83 ec 20 c5 f8 77 48 8b f1 c5 fb 11 4c 24 38 c5 fb 11 54 24 40 48 b9 70 bb a9 c6 f7 7f 00 00 ba 02 00 00 00 e8 95 69 04 5f c5 fb 10 4c 24 38 c5 fb 11 48 10 c5 fb 10 54 24 40 c5 fb 11 50 18 48 8b ce 48 8b d0 39 09 e8 e2 21 e9 ff 48 8b ce e8 b2 05 e9 ff c5 fb 10 40 08 c5 f9 2e 05 1d 00 00 00 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 48 83 c4 20 5e c3}
; Capture completion code, RET_INTR
; 2020-01-24 02:54:57:185
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh vmovsd qword ptr [rsp+38h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 4c 24 38}
0011h vmovsd qword ptr [rsp+40h],xmm2         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 54 24 40}
0017h mov rcx,7ff7c6a9bb70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 bb a9 c6 f7 7f 00 00}
0021h mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0026h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 69 04 5f}
002bh vmovsd xmm1,qword ptr [rsp+38h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 4c 24 38}
0031h vmovsd qword ptr [rax+10h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 48 10}
0036h vmovsd xmm2,qword ptr [rsp+40h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 54 24 40}
003ch vmovsd qword ptr [rax+18h],xmm2         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 50 18}
0041h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0044h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0047h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0049h call 7ff7c6cf2650h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 21 e9 ff}
004eh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0051h call 7ff7c6cf0a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 05 e9 ff}
0056h vmovsd xmm0,qword ptr [rax+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 40 08}
005bh vucomisd xmm0,qword ptr [7ff7c6e604a0h] ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[8]{c5 f9 2e 05 1d 00 00 00}
0063h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0066h jp short 006bh                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0068h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
006bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006eh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
