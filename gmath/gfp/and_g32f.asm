; float and<float>(float a, float b)
; and_g32f[7ff7c71bf080h, 7ff7c71bf0aah][42] = {48 83 ec 18 c5 f8 77 c5 fa 11 44 24 14 8b 44 24 14 c5 fa 11 4c 24 10 23 44 24 10 89 44 24 0c c5 fa 10 44 24 0c 48 83 c4 18 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:00:488
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovss dword ptr [rsp+14h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 14}
000dh mov eax,[rsp+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 14}
0011h vmovss dword ptr [rsp+10h],xmm1         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 4c 24 10}
0017h and eax,[rsp+10h]                       ; AND r32, r/m32 || o32 23 /r || encoded[4]{23 44 24 10}
001bh mov [rsp+0ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 0c}
001fh vmovss xmm0,dword ptr [rsp+0ch]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 0c}
0025h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
