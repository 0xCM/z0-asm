------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vsllr<byte>(Vector256<byte> x, byte offset)
; vsllr__g256x8u_0o[100] = {50 c5 f8 77 90 c5 fd 10 02 41 0f b6 c0 c5 f9 6e c8 c4 e3 7d 19 c2 00 c4 e2 7d 30 d2 c5 ed f1 d1 c4 e3 7d 19 c0 01 c4 e2 7d 30 c0 c5 fd f1 c1 c7 44 24 04 ff 00 00 00 48 8d 44 24 04 c4 e2 7d 79 4c 24 04 c5 ed db d1 c5 fd db c1 c5 ed 67 c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code = RET_INTRx2
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
000dh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0011h vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
0017h vpmovzxbw ymm2,xmm2                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 d2}
001ch vpsllw ymm2,ymm2,xmm1                   ; VPSLLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F1 /r || encoded[4]{c5 ed f1 d1}
0020h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0026h vpmovzxbw ymm0,xmm0                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c0}
002bh vpsllw ymm0,ymm0,xmm1                   ; VPSLLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F1 /r || encoded[4]{c5 fd f1 c1}
002fh mov dword ptr [rsp+4],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff 00 00 00}
0037h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
003ch vpbroadcastw ymm1,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 4c 24 04}
0043h vpand ymm2,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d1}
0047h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
004bh vpackuswb ymm0,ymm2,ymm0                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 ed 67 c0}
004fh vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0055h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0059h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vsllr<sbyte>(Vector256<sbyte> x, sbyte offset)
; vsllr__g256x8i_0o[132] = {c5 f8 77 66 90 c5 fd 10 02 49 0f be c0 c5 f9 6e c8 c4 e3 7d 19 c2 00 c4 e2 79 20 da c4 e3 f9 16 d0 01 c4 e1 f9 6e d0 c4 e2 79 20 d2 c5 dc 57 e4 c4 e3 5d 38 db 00 c4 e3 65 38 d2 01 c5 ed f1 d1 c4 e3 7d 19 c0 01 c4 e2 79 20 d8 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 79 20 c0 c5 dc 57 e4 c4 e3 5d 38 db 00 c4 e3 65 38 c0 01 c5 fd f1 c1 c5 ed 63 c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
000dh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0011h vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
0017h vpmovsxbw xmm3,xmm2                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 da}
001ch vpextrq rax,xmm2,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 d0 01}
0022h vmovq xmm2,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e d0}
0027h vpmovsxbw xmm2,xmm2                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 d2}
002ch vxorps ymm4,ymm4,ymm4                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 dc 57 e4}
0030h vinserti128 ymm3,ymm4,xmm3,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 5d 38 db 00}
0036h vinserti128 ymm2,ymm3,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 65 38 d2 01}
003ch vpsllw ymm2,ymm2,xmm1                   ; VPSLLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F1 /r || encoded[4]{c5 ed f1 d1}
0040h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0046h vpmovsxbw xmm3,xmm0                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 d8}
004bh vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0051h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
0056h vpmovsxbw xmm0,xmm0                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 c0}
005bh vxorps ymm4,ymm4,ymm4                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 dc 57 e4}
005fh vinserti128 ymm3,ymm4,xmm3,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 5d 38 db 00}
0065h vinserti128 ymm0,ymm3,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 65 38 c0 01}
006bh vpsllw ymm0,ymm0,xmm1                   ; VPSLLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F1 /r || encoded[4]{c5 fd f1 c1}
006fh vpacksswb ymm0,ymm2,ymm0                ; VPACKSSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 63 /r || encoded[4]{c5 ed 63 c0}
0073h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0079h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
007dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0080h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vsllr<ushort>(Vector256<ushort> x, ushort offset)
; vsllr__g256x16u_0o[32] = {c5 f8 77 66 90 c5 fd 10 02 41 0f b7 c0 c5 f9 6e c8 c5 fd f1 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
000dh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0011h vpsllw ymm0,ymm0,xmm1                   ; VPSLLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F1 /r || encoded[4]{c5 fd f1 c1}
0015h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vsllr<short>(Vector256<short> x, short offset)
; vsllr__g256x16i_0o[32] = {c5 f8 77 66 90 c5 fd 10 02 49 0f bf c0 c5 f9 6e c8 c5 fd f1 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
000dh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0011h vpsllw ymm0,ymm0,xmm1                   ; VPSLLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F1 /r || encoded[4]{c5 fd f1 c1}
0015h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0019h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vsllr<uint>(Vector256<uint> x, uint offset)
; vsllr__g256x32u_0o[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 79 6e c8 c5 fd f2 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovd xmm1,r8d                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[5]{c4 c1 79 6e c8}
000eh vpslld ymm0,ymm0,xmm1                   ; VPSLLD ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F2 /r || encoded[4]{c5 fd f2 c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vsllr<int>(Vector256<int> x, int offset)
; vsllr__g256x32i_0o[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 79 6e c8 c5 fd f2 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovd xmm1,r8d                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[5]{c4 c1 79 6e c8}
000eh vpslld ymm0,ymm0,xmm1                   ; VPSLLD ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F2 /r || encoded[4]{c5 fd f2 c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vsllr<ulong>(Vector256<ulong> x, ulong offset)
; vsllr__g256x64u_0o[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 f9 6e c8 c5 fd f3 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovq xmm1,r8                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c8}
000eh vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vsllr<long>(Vector256<long> x, long offset)
; vsllr__g256x64i_0o[29] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 f9 6e c8 c5 fd f3 c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovq xmm1,r8                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c8}
000eh vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}