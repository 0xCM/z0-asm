------------------------------------------------------------------------------------------------------------------------
; float abs<float>(float src)
; abs_g32f[50] = {48 83 ec 18 c5 f8 77 33 c0 48 89 44 24 10 c5 fa 11 44 24 08 8b 44 24 08 89 44 24 10 48 8d 44 24 10 81 20 ff ff ff 7f c5 fa 10 44 24 10 48 83 c4 18 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
000eh vmovss dword ptr [rsp+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 08}
0014h mov eax,[rsp+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 08}
0018h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
001ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0021h and dword ptr [rax],7fffffffh           ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 20 ff ff ff 7f}
0027h vmovss xmm0,dword ptr [rsp+10h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 10}
002dh add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double abs<double>(double src)
; abs_g64f[59] = {48 83 ec 18 c5 f8 77 33 c0 48 89 44 24 10 c5 fb 11 44 24 08 48 8b 44 24 08 48 89 44 24 10 48 8d 44 24 10 48 ba ff ff ff ff ff ff ff 7f 48 21 10 c5 fb 10 44 24 10 48 83 c4 18 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
000eh vmovsd qword ptr [rsp+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 08}
0014h mov rax,[rsp+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 08}
0019h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
001eh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0023h mov rdx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff 7f}
002dh and [rax],rdx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 10}
0030h vmovsd xmm0,qword ptr [rsp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 10}
0036h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
003ah ret                                     ; RET || C3 || encoded[1]{c3}