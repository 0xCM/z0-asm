; double toggle(double src, int pos)
; toggle_64f[7ff7c6e7ba10h, 7ff7c6e7ba35h][37] = {c5 f8 77 66 90 c5 fb 11 44 24 08 48 8d 44 24 08 41 b8 01 00 00 00 8b ca 49 d3 e0 4c 31 00 c5 fb 10 44 24 08 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:51:890
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd qword ptr [rsp+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 08}
000bh lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0010h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
001bh xor [rax],r8                            ; XOR r/m64, r64 || REX.W 31 /r || encoded[3]{4c 31 00}
001eh vmovsd xmm0,qword ptr [rsp+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 08}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
