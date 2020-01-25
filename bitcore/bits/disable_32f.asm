; float disable(float src, int pos)
; disable_32f[7ff7c6e85690h, 7ff7c6e856b9h][41] = {c5 f8 77 66 90 c5 fa 11 44 24 08 48 8d 44 24 08 41 b8 01 00 00 00 8b ca 41 d3 e0 41 8b d0 f7 d2 21 10 c5 fa 10 44 24 08 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:52:313
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss dword ptr [rsp+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 08}
000bh lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0010h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
001bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001eh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0020h and [rax],edx                           ; AND r/m32, r32 || o32 21 /r || encoded[2]{21 10}
0022h vmovss xmm0,dword ptr [rsp+8]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 08}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
