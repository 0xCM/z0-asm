; Vector256<Int16> vputcell<Int16>(Int16 src, int index, Vector256<Int16> dst)
; vputcell__256x16i[7ff7c6dc3010h, 7ff7c6dc3055h][69] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 10 73 28 c5 fd 11 44 24 20 48 8d 44 24 20 4d 63 c0 66 42 89 14 40 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 84 fa 5c ff cc}
; Capture completion code, INTRx2
; 2020-01-24 18:45:08:022
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0010h jae short 003ah                         ; JAE rel8 || 73 cb || encoded[2]{73 28}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*2],dx                       ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 42 89 14 40}
0025h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003fh call 7ff7c6392ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 fa 5c ff}
0044h int 3                                   ; INT3 || CC || encoded[1]{cc}
