; Vector256<uint> vbitclear<uint>(Vector256<uint> src, byte start, byte count)
; vbitclear__256x32u[7ff7c71e7070h, 7ff7c71e70bch][76] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 b0 f3 d1 41 0f b6 c8 41 d3 e1 41 8b c9 f7 d1 89 4c 24 04 48 8d 4c 24 04 c4 e2 7d 58 44 24 04 c5 fd 10 0a c5 fd db c1 c5 fd 11 00 c5 f8 77 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:08:707
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0014h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0017h blsmsk r9,r9                            ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 b0 f3 d1}
001ch movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0020h shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0023h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0026h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0028h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
002ch lea rcx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 04}
0031h vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
0038h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
003ch vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0040h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0044h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0047h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
