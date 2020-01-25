; Vector128<uint> get_Vector128u32()
; get_Vector128u32__128x32u[7ff7c6be3a40h, 7ff7c6be3a65h][37] = {50 c5 f8 77 90 c7 44 24 04 20 00 00 00 48 8d 44 24 04 c4 e2 79 58 44 24 04 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:00:666
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov dword ptr [rsp+4],20h               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 20 00 00 00}
000dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0012h vpbroadcastd xmm0,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 44 24 04}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
