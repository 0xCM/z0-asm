; Vector256<long> vbroadcast(N256 n, long src)
; vbroadcast__n256_256x64i[7ff7c71e0ce0h, 7ff7c71e0d01h][33] = {c5 f8 77 66 90 4c 89 44 24 18 48 8d 44 24 18 c4 e2 7d 59 44 24 18 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:04:466
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov [rsp+18h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 44 24 18}
000ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
000fh vpbroadcastq ymm0,qword ptr [rsp+18h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 44 24 18}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
