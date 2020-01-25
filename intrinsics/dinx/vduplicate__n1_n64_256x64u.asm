; Vector256<ulong> vduplicate(N1 parity, N64 w, Vector256<ulong> src)
; vduplicate__n1_n64_256x64u[7ff7c71e15a0h, 7ff7c71e15beh][30] = {c5 f8 77 66 90 c4 c1 7d 10 01 c5 fd 73 d0 40 c5 ff 12 c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:04:492
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ah vpsrlq ymm0,ymm0,40h                    ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d0 40}
000fh vmovddup ymm0,ymm0                      ; VMOVDDUP ymm1, ymm2/m256 || VEX.256.F2.0F.WIG 12 /r || encoded[4]{c5 ff 12 c0}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
