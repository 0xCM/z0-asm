------------------------------------------------------------------------------------------------------------------------
; Vector512<byte> vblendp<byte>(Vector512<byte> x, Vector256<byte> spec)
; vblendp__g512x8u_256x8u[68] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 10 4a 20 c5 fc 28 d0 c5 fc 28 d9 c4 c1 7d 10 20 c4 e3 6d 4c d3 40 c4 c1 7d 10 18 c5 e5 74 e3 c5 e5 ef dc c4 e3 7d 4c c1 30 c5 fd 11 11 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
000eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0012h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0016h vmovupd ymm4,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 20}
001bh vpblendvb ymm2,ymm2,ymm3,ymm4           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 6d 4c d3 40}
0021h vmovupd ymm3,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 18}
0026h vpcmpeqb ymm4,ymm3,ymm3                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 e5 74 e3}
002ah vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
002eh vpblendvb ymm0,ymm0,ymm1,ymm3           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 30}
0034h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0038h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<sbyte> vblendp<sbyte>(Vector512<sbyte> x, Vector256<sbyte> spec)
; vblendp__g512x8i_256x8i[68] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 10 4a 20 c5 fc 28 d0 c5 fc 28 d9 c4 c1 7d 10 20 c4 e3 6d 4c d3 40 c4 c1 7d 10 18 c5 e5 74 e3 c5 e5 ef dc c4 e3 7d 4c c1 30 c5 fd 11 11 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
000eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0012h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0016h vmovupd ymm4,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 20}
001bh vpblendvb ymm2,ymm2,ymm3,ymm4           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 6d 4c d3 40}
0021h vmovupd ymm3,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 18}
0026h vpcmpeqb ymm4,ymm3,ymm3                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 e5 74 e3}
002ah vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
002eh vpblendvb ymm0,ymm0,ymm1,ymm3           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 30}
0034h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0038h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ushort> vblendp<ushort>(Vector512<ushort> x, Vector256<ushort> spec)
; vblendp__g512x16u_256x16u[68] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 10 4a 20 c5 fc 28 d0 c5 fc 28 d9 c4 c1 7d 10 20 c4 e3 6d 4c d3 40 c4 c1 7d 10 18 c5 e5 75 e3 c5 e5 ef dc c4 e3 7d 4c c1 30 c5 fd 11 11 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
000eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0012h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0016h vmovupd ymm4,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 20}
001bh vpblendvb ymm2,ymm2,ymm3,ymm4           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 6d 4c d3 40}
0021h vmovupd ymm3,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 18}
0026h vpcmpeqw ymm4,ymm3,ymm3                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 e5 75 e3}
002ah vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
002eh vpblendvb ymm0,ymm0,ymm1,ymm3           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 30}
0034h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0038h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<short> vblendp<short>(Vector512<short> x, Vector256<short> spec)
; vblendp__g512x16i_256x16i[68] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 10 4a 20 c5 fc 28 d0 c5 fc 28 d9 c4 c1 7d 10 20 c4 e3 6d 4c d3 40 c4 c1 7d 10 18 c5 e5 75 e3 c5 e5 ef dc c4 e3 7d 4c c1 30 c5 fd 11 11 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
000eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0012h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0016h vmovupd ymm4,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 20}
001bh vpblendvb ymm2,ymm2,ymm3,ymm4           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 6d 4c d3 40}
0021h vmovupd ymm3,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 18}
0026h vpcmpeqw ymm4,ymm3,ymm3                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 e5 75 e3}
002ah vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
002eh vpblendvb ymm0,ymm0,ymm1,ymm3           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 30}
0034h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0038h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vblendp<uint>(Vector512<uint> x, Vector256<uint> spec)
; vblendp__g512x32u_256x32u[68] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 10 4a 20 c5 fc 28 d0 c5 fc 28 d9 c4 c1 7d 10 20 c4 e3 6d 4c d3 40 c4 c1 7d 10 18 c5 e5 76 e3 c5 e5 ef dc c4 e3 7d 4c c1 30 c5 fd 11 11 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
000eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0012h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0016h vmovupd ymm4,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 20}
001bh vpblendvb ymm2,ymm2,ymm3,ymm4           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 6d 4c d3 40}
0021h vmovupd ymm3,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 18}
0026h vpcmpeqd ymm4,ymm3,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 e5 76 e3}
002ah vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
002eh vpblendvb ymm0,ymm0,ymm1,ymm3           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 30}
0034h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0038h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vblendp<int>(Vector512<int> x, Vector256<int> spec)
; vblendp__g512x32i_256x32i[68] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 10 4a 20 c5 fc 28 d0 c5 fc 28 d9 c4 c1 7d 10 20 c4 e3 6d 4c d3 40 c4 c1 7d 10 18 c5 e5 76 e3 c5 e5 ef dc c4 e3 7d 4c c1 30 c5 fd 11 11 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
000eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0012h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0016h vmovupd ymm4,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 20}
001bh vpblendvb ymm2,ymm2,ymm3,ymm4           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 6d 4c d3 40}
0021h vmovupd ymm3,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 18}
0026h vpcmpeqd ymm4,ymm3,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 e5 76 e3}
002ah vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
002eh vpblendvb ymm0,ymm0,ymm1,ymm3           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 30}
0034h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0038h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vblendp<ulong>(Vector512<ulong> x, Vector256<ulong> spec)
; vblendp__g512x64u_256x64u[69] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 10 4a 20 c5 fc 28 d0 c5 fc 28 d9 c4 c1 7d 10 20 c4 e3 6d 4c d3 40 c4 c1 7d 10 18 c4 e2 65 29 e3 c5 e5 ef dc c4 e3 7d 4c c1 30 c5 fd 11 11 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
000eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0012h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0016h vmovupd ymm4,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 20}
001bh vpblendvb ymm2,ymm2,ymm3,ymm4           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 6d 4c d3 40}
0021h vmovupd ymm3,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 18}
0026h vpcmpeqq ymm4,ymm3,ymm3                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 65 29 e3}
002bh vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
002fh vpblendvb ymm0,ymm0,ymm1,ymm3           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 30}
0035h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0039h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vblendp<long>(Vector512<long> x, Vector256<long> spec)
; vblendp__g512x64i_256x64i[69] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 10 4a 20 c5 fc 28 d0 c5 fc 28 d9 c4 c1 7d 10 20 c4 e3 6d 4c d3 40 c4 c1 7d 10 18 c4 e2 65 29 e3 c5 e5 ef dc c4 e3 7d 4c c1 30 c5 fd 11 11 c5 fd 11 41 20 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
000eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0012h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0016h vmovupd ymm4,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 20}
001bh vpblendvb ymm2,ymm2,ymm3,ymm4           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 6d 4c d3 40}
0021h vmovupd ymm3,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 18}
0026h vpcmpeqq ymm4,ymm3,ymm3                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 65 29 e3}
002bh vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
002fh vpblendvb ymm0,ymm0,ymm1,ymm3           ; VPBLENDVB ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4C /r /is4 || encoded[6]{c4 e3 7d 4c c1 30}
0035h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0039h vmovupd [rcx+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 41 20}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
