------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vpart30x8x3(uint src)
; vpart30x8x3_32u[458] = {57 56 53 48 83 ec 10 c5 f8 77 81 e2 ff ff ff 3f 8b c2 25 ff 7f 00 00 89 44 24 0c 0f b7 44 24 0c c1 ea 0f 81 e2 ff 7f 00 00 89 54 24 08 0f b7 54 24 08 c1 e2 10 0b c2 89 44 24 04 48 8d 44 24 04 c4 e2 7d 58 44 24 04 b8 07 00 07 00 c5 f9 6e c8 b8 38 00 38 00 c4 e3 71 22 c8 01 b8 c0 01 c0 01 c4 e3 71 22 c8 02 b8 00 0e 00 0e c4 e3 71 22 c8 03 b8 00 70 00 70 c5 f9 6e d0 33 c0 c4 e3 69 22 d0 01 c4 e3 69 22 d0 02 c4 e3 69 22 d0 03 c4 e3 75 38 ca 01 c5 f9 6e d0 b8 03 00 00 00 c4 e3 69 22 d0 01 b8 06 00 00 00 c4 e3 69 22 d0 02 b8 09 00 00 00 c4 e3 69 22 d0 03 b8 0c 00 00 00 c5 f9 6e d8 33 c0 c4 e3 61 22 d8 01 c4 e3 61 22 d8 02 c4 e3 61 22 d8 03 c4 e3 6d 38 d3 01 c5 fd db c1 c4 e2 7d 45 c2 c5 fc 28 c8 c5 fc 28 d0 c5 f9 c5 c2 00 c5 fc 28 d0 c5 f9 c5 d2 02 c5 fc 28 d0 c5 79 c5 c2 04 c5 fc 28 d0 c5 79 c5 ca 06 c4 e3 7d 19 c2 01 c5 79 c5 d2 00 c5 fc 28 d0 c5 79 c5 da 01 c5 fc 28 d0 c5 f9 c5 f2 03 c5 fc 28 d0 c5 f9 c5 fa 05 c5 f9 c5 d8 07 0f b7 c0 c5 f9 6e c0 0f b7 c2 c5 f9 c4 c0 01 41 0f b7 c0 c5 f9 c4 c0 02 41 0f b7 c1 c5 f9 c4 c0 03 41 0f b7 c2 c5 f9 c4 c0 04 41 0f b7 c3 c5 f9 c4 c0 05 0f b7 c6 c5 f9 c4 c0 06 0f b7 c7 c5 f9 c4 c0 07 0f b7 c3 c5 f9 6e d0 c4 e3 7d 19 c9 01 c5 f9 c5 c1 01 c5 e9 c4 d0 01 33 c0 c5 e9 c4 d0 02 c5 e9 c4 d0 03 c5 e9 c4 d0 04 c5 e9 c4 d0 05 c5 e9 c4 d0 06 c5 e9 c4 c8 07 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 10 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,10h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 10}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah and edx,3fffffffh                       ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 e2 ff ff ff 3f}
0010h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0012h and eax,7fffh                           ; AND EAX, imm32 || o32 25 id || encoded[5]{25 ff 7f 00 00}
0017h mov [rsp+0ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 0c}
001bh movzx eax,word ptr [rsp+0ch]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 0c}
0020h shr edx,0fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 0f}
0023h and edx,7fffh                           ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 e2 ff 7f 00 00}
0029h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
002dh movzx edx,word ptr [rsp+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 08}
0032h shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
0035h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0037h mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
003bh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0040h vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
0047h mov eax,70007h                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 07 00}
004ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0050h mov eax,380038h                         ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 38 00 38 00}
0055h vpinsrd xmm1,xmm1,eax,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 71 22 c8 01}
005bh mov eax,1c001c0h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 c0 01 c0 01}
0060h vpinsrd xmm1,xmm1,eax,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 71 22 c8 02}
0066h mov eax,0e000e00h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 0e 00 0e}
006bh vpinsrd xmm1,xmm1,eax,3                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 71 22 c8 03}
0071h mov eax,70007000h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 70 00 70}
0076h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
007ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
007ch vpinsrd xmm2,xmm2,eax,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 69 22 d0 01}
0082h vpinsrd xmm2,xmm2,eax,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 69 22 d0 02}
0088h vpinsrd xmm2,xmm2,eax,3                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 69 22 d0 03}
008eh vinserti128 ymm1,ymm1,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 ca 01}
0094h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
0098h mov eax,3                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 03 00 00 00}
009dh vpinsrd xmm2,xmm2,eax,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 69 22 d0 01}
00a3h mov eax,6                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 06 00 00 00}
00a8h vpinsrd xmm2,xmm2,eax,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 69 22 d0 02}
00aeh mov eax,9                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 09 00 00 00}
00b3h vpinsrd xmm2,xmm2,eax,3                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 69 22 d0 03}
00b9h mov eax,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 0c 00 00 00}
00beh vmovd xmm3,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d8}
00c2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00c4h vpinsrd xmm3,xmm3,eax,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 61 22 d8 01}
00cah vpinsrd xmm3,xmm3,eax,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 61 22 d8 02}
00d0h vpinsrd xmm3,xmm3,eax,3                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 61 22 d8 03}
00d6h vinserti128 ymm2,ymm2,xmm3,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 d3 01}
00dch vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
00e0h vpsrlvd ymm0,ymm0,ymm2                  ; VPSRLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 45 /r || encoded[5]{c4 e2 7d 45 c2}
00e5h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
00e9h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
00edh vpextrw eax,xmm2,0                      ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 f9 c5 c2 00}
00f2h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
00f6h vpextrw edx,xmm2,2                      ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 f9 c5 d2 02}
00fbh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
00ffh vpextrw r8d,xmm2,4                      ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 79 c5 c2 04}
0104h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0108h vpextrw r9d,xmm2,6                      ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 79 c5 ca 06}
010dh vextractf128 xmm2,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 01}
0113h vpextrw r10d,xmm2,0                     ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 79 c5 d2 00}
0118h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
011ch vpextrw r11d,xmm2,1                     ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 79 c5 da 01}
0121h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0125h vpextrw esi,xmm2,3                      ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 f9 c5 f2 03}
012ah vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
012eh vpextrw edi,xmm2,5                      ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 f9 c5 fa 05}
0133h vpextrw ebx,xmm0,7                      ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 f9 c5 d8 07}
0138h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
013bh vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
013fh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0142h vpinsrw xmm0,xmm0,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 01}
0147h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
014bh vpinsrw xmm0,xmm0,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 02}
0150h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0154h vpinsrw xmm0,xmm0,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 03}
0159h movzx eax,r10w                          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c2}
015dh vpinsrw xmm0,xmm0,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 04}
0162h movzx eax,r11w                          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c3}
0166h vpinsrw xmm0,xmm0,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 05}
016bh movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
016eh vpinsrw xmm0,xmm0,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 06}
0173h movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
0176h vpinsrw xmm0,xmm0,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 f9 c4 c0 07}
017bh movzx eax,bx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c3}
017eh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
0182h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0188h vpextrw eax,xmm1,1                      ; VPEXTRW r32, xmm1, imm8 || VEX.128.66.0F.W0 C5 /r ib || encoded[5]{c5 f9 c5 c1 01}
018dh vpinsrw xmm2,xmm2,eax,1                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 01}
0192h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0194h vpinsrw xmm2,xmm2,eax,2                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 02}
0199h vpinsrw xmm2,xmm2,eax,3                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 03}
019eh vpinsrw xmm2,xmm2,eax,4                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 04}
01a3h vpinsrw xmm2,xmm2,eax,5                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 05}
01a8h vpinsrw xmm2,xmm2,eax,6                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 d0 06}
01adh vpinsrw xmm1,xmm2,eax,7                 ; VPINSRW xmm1, xmm2, r32/m16, imm8 || VEX.128.66.0F.W0 C4 /r ib || encoded[5]{c5 e9 c4 c8 07}
01b2h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
01b8h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
01bch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01bfh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01c2h add rsp,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 10}
01c6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01c7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01c8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c9h ret                                     ; RET || C3 || encoded[1]{c3}
