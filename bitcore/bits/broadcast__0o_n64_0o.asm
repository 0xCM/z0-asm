; ulong broadcast(uint src, N64 w)
; broadcast__0o_n64_0o[7ff7c6e707f0h, 7ff7c6e7080fh][31] = {50 c5 f8 77 90 89 4c 24 04 48 8d 44 24 04 c4 e2 79 58 44 24 04 c4 e1 f9 7e c0 48 83 c4 08 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:32:819
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
0009h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
000eh vpbroadcastd xmm0,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 44 24 04}
0015h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
001ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
