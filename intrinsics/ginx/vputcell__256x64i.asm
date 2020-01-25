; Vector256<long> vputcell<long>(long src, int index, Vector256<long> dst)
; vputcell__256x64i[7ff7c72042b0h, 7ff7c72042f4h][68] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 04 73 27 c5 fd 11 44 24 20 48 8d 44 24 20 4d 63 c0 4a 89 14 c0 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 e5 e7 19 ff cc}
; Capture completion code, INTRx2
; 2020-01-25 02:11:11:301
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0010h jae short 0039h                         ; JAE rel8 || 73 cb || encoded[2]{73 27}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*8],rdx                      ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4a 89 14 c0}
0024h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0034h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
0039h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003eh call 7ff7c63a2ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 e7 19 ff}
0043h int 3                                   ; INT3 || CC || encoded[1]{cc}
