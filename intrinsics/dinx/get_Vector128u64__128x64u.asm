; Vector128<ulong> get_Vector128u64()
; get_Vector128u64__128x64u[7ff7c71d92d0h, 7ff7c71d92f3h][35] = {50 c5 f8 77 90 48 c7 04 24 40 00 00 00 48 8d 04 24 c4 e2 79 59 04 24 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:03:137
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov qword ptr [rsp],40h                 ; MOV r/m64, imm32 || REX.W C7 /0 id || encoded[8]{48 c7 04 24 40 00 00 00}
000dh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0011h vpbroadcastq xmm0,qword ptr [rsp]       ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[6]{c4 e2 79 59 04 24}
0017h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
