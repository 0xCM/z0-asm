; float disable<float>(float src, int pos)
; disable_g32f[7ff7c6e83c40h, 7ff7c6e83c6dh][45] = {50 c5 f8 77 90 c5 fa 11 44 24 04 48 8d 44 24 04 41 b8 01 00 00 00 8b ca 41 d3 e0 41 8b d0 f7 d2 21 10 c5 fa 10 44 24 04 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:34:184
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0010h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
001bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001eh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0020h and [rax],edx                           ; AND r/m32, r32 || o32 21 /r || encoded[2]{21 10}
0022h vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
0028h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
