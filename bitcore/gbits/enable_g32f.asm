; float enable<float>(float src, int pos)
; enable_g32f[7ff7c6e84400h, 7ff7c6e8442ah][42] = {50 c5 f8 77 90 c5 fa 11 44 24 04 8b 44 24 04 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0b c0 89 04 24 c5 fa 10 04 24 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:34:207
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
000fh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0015h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0017h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
001ah or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001dh mov [rsp],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 04 24}
0020h vmovss xmm0,dword ptr [rsp]             ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 04 24}
0025h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
