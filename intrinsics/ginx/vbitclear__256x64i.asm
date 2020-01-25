; Vector256<long> vbitclear<long>(Vector256<long> src, byte start, byte count)
; vbitclear__256x64i[7ff7c6bfdd00h, 7ff7c6bfdd52h][82] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 b0 f3 d1 41 0f b6 c8 49 d3 e1 48 b9 ff ff ff ff ff ff ff 7f 49 33 c9 48 89 0c 24 48 8d 0c 24 c4 e2 7d 59 04 24 c5 fd 10 0a c5 fd db c1 c5 fd 11 00 c5 f8 77 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:05:065
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
0020h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0023h mov rcx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 ff ff ff ff ff ff ff 7f}
002dh xor rcx,r9                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c9}
0030h mov [rsp],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 0c 24}
0034h lea rcx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 0c 24}
0038h vpbroadcastq ymm0,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 04 24}
003eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0042h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
