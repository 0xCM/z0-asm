------------------------------------------------------------------------------------------------------------------------
; bit vsame<byte>(in Vector512<byte> x, in Vector512<byte> y)
; vsame__g512x8u_512x8u[191] = {48 81 ec 88 00 00 00 c5 f8 77 c5 fd 10 01 c5 fd 10 0a c5 fd 74 c1 c5 fd 10 49 20 c5 fd 10 52 20 c5 f5 74 ca c5 ec 57 d2 c5 fd 11 54 24 48 c5 ec 57 d2 c5 fd 11 54 24 68 c5 ec 57 d2 c5 fd 11 54 24 08 c5 ec 57 d2 c5 fd 11 54 24 28 48 8d 44 24 48 c5 e8 57 d2 c5 fa 7f 10 c5 fa 7f 50 10 c5 fa 7f 50 20 c5 fa 7f 50 30 48 8d 54 24 08 c5 e8 57 d2 c5 fa 7f 12 c5 fa 7f 52 10 c5 fa 7f 52 20 c5 fa 7f 52 30 c5 fd 10 10 c5 fd 10 1a c5 ed 74 d3 c5 fc 28 da c4 e2 7d 17 c3 0f 92 c0 0f b6 c0 85 c0 74 0f c4 e2 7d 17 ca 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 c3}
; TermCode = RET_INTRx2
0000h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0016h vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
001bh vmovupd ymm2,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 20}
0020h vpcmpeqb ymm1,ymm1,ymm2                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 f5 74 ca}
0024h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0028h vmovupd [rsp+48h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 48}
002eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0032h vmovupd [rsp+68h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 68}
0038h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
003ch vmovupd [rsp+8],ymm2                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 08}
0042h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0046h vmovupd [rsp+28h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 28}
004ch lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0051h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0055h vmovdqu xmmword ptr [rax],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 10}
0059h vmovdqu xmmword ptr [rax+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 10}
005eh vmovdqu xmmword ptr [rax+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 20}
0063h vmovdqu xmmword ptr [rax+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 30}
0068h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
006dh vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0071h vmovdqu xmmword ptr [rdx],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 12}
0075h vmovdqu xmmword ptr [rdx+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 10}
007ah vmovdqu xmmword ptr [rdx+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 20}
007fh vmovdqu xmmword ptr [rdx+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 30}
0084h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
0088h vmovupd ymm3,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 1a}
008ch vpcmpeqb ymm2,ymm2,ymm3                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 ed 74 d3}
0090h vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0094h vptest ymm0,ymm3                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c3}
0099h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
009ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00a1h je short 00b2h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
00a3h vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
00a8h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
00abh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00aeh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00b0h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b4h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00b7h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vsame<sbyte>(in Vector512<sbyte> x, in Vector512<sbyte> y)
; vsame__g512x8i_512x8i[191] = {48 81 ec 88 00 00 00 c5 f8 77 c5 fd 10 01 c5 fd 10 0a c5 fd 74 c1 c5 fd 10 49 20 c5 fd 10 52 20 c5 f5 74 ca c5 ec 57 d2 c5 fd 11 54 24 48 c5 ec 57 d2 c5 fd 11 54 24 68 c5 ec 57 d2 c5 fd 11 54 24 08 c5 ec 57 d2 c5 fd 11 54 24 28 48 8d 44 24 48 c5 e8 57 d2 c5 fa 7f 10 c5 fa 7f 50 10 c5 fa 7f 50 20 c5 fa 7f 50 30 48 8d 54 24 08 c5 e8 57 d2 c5 fa 7f 12 c5 fa 7f 52 10 c5 fa 7f 52 20 c5 fa 7f 52 30 c5 fd 10 10 c5 fd 10 1a c5 ed 74 d3 c5 fc 28 da c4 e2 7d 17 c3 0f 92 c0 0f b6 c0 85 c0 74 0f c4 e2 7d 17 ca 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 c3}
; TermCode = RET_INTRx2
0000h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0016h vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
001bh vmovupd ymm2,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 20}
0020h vpcmpeqb ymm1,ymm1,ymm2                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 f5 74 ca}
0024h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0028h vmovupd [rsp+48h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 48}
002eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0032h vmovupd [rsp+68h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 68}
0038h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
003ch vmovupd [rsp+8],ymm2                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 08}
0042h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0046h vmovupd [rsp+28h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 28}
004ch lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0051h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0055h vmovdqu xmmword ptr [rax],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 10}
0059h vmovdqu xmmword ptr [rax+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 10}
005eh vmovdqu xmmword ptr [rax+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 20}
0063h vmovdqu xmmword ptr [rax+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 30}
0068h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
006dh vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0071h vmovdqu xmmword ptr [rdx],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 12}
0075h vmovdqu xmmword ptr [rdx+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 10}
007ah vmovdqu xmmword ptr [rdx+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 20}
007fh vmovdqu xmmword ptr [rdx+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 30}
0084h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
0088h vmovupd ymm3,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 1a}
008ch vpcmpeqb ymm2,ymm2,ymm3                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 ed 74 d3}
0090h vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0094h vptest ymm0,ymm3                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c3}
0099h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
009ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00a1h je short 00b2h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
00a3h vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
00a8h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
00abh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00aeh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00b0h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b4h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00b7h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vsame<ushort>(in Vector512<ushort> x, in Vector512<ushort> y)
; vsame__g512x16u_512x16u[191] = {48 81 ec 88 00 00 00 c5 f8 77 c5 fd 10 01 c5 fd 10 0a c5 fd 75 c1 c5 fd 10 49 20 c5 fd 10 52 20 c5 f5 75 ca c5 ec 57 d2 c5 fd 11 54 24 48 c5 ec 57 d2 c5 fd 11 54 24 68 c5 ec 57 d2 c5 fd 11 54 24 08 c5 ec 57 d2 c5 fd 11 54 24 28 48 8d 44 24 48 c5 e8 57 d2 c5 fa 7f 10 c5 fa 7f 50 10 c5 fa 7f 50 20 c5 fa 7f 50 30 48 8d 54 24 08 c5 e8 57 d2 c5 fa 7f 12 c5 fa 7f 52 10 c5 fa 7f 52 20 c5 fa 7f 52 30 c5 fd 10 10 c5 fd 10 1a c5 ed 75 d3 c5 fc 28 da c4 e2 7d 17 c3 0f 92 c0 0f b6 c0 85 c0 74 0f c4 e2 7d 17 ca 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 c3}
; TermCode = RET_INTRx2
0000h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0016h vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
001bh vmovupd ymm2,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 20}
0020h vpcmpeqw ymm1,ymm1,ymm2                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 ca}
0024h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0028h vmovupd [rsp+48h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 48}
002eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0032h vmovupd [rsp+68h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 68}
0038h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
003ch vmovupd [rsp+8],ymm2                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 08}
0042h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0046h vmovupd [rsp+28h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 28}
004ch lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0051h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0055h vmovdqu xmmword ptr [rax],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 10}
0059h vmovdqu xmmword ptr [rax+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 10}
005eh vmovdqu xmmword ptr [rax+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 20}
0063h vmovdqu xmmword ptr [rax+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 30}
0068h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
006dh vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0071h vmovdqu xmmword ptr [rdx],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 12}
0075h vmovdqu xmmword ptr [rdx+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 10}
007ah vmovdqu xmmword ptr [rdx+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 20}
007fh vmovdqu xmmword ptr [rdx+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 30}
0084h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
0088h vmovupd ymm3,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 1a}
008ch vpcmpeqw ymm2,ymm2,ymm3                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 ed 75 d3}
0090h vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0094h vptest ymm0,ymm3                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c3}
0099h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
009ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00a1h je short 00b2h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
00a3h vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
00a8h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
00abh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00aeh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00b0h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b4h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00b7h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vsame<short>(in Vector512<short> x, in Vector512<short> y)
; vsame__g512x16i_512x16i[191] = {48 81 ec 88 00 00 00 c5 f8 77 c5 fd 10 01 c5 fd 10 0a c5 fd 75 c1 c5 fd 10 49 20 c5 fd 10 52 20 c5 f5 75 ca c5 ec 57 d2 c5 fd 11 54 24 48 c5 ec 57 d2 c5 fd 11 54 24 68 c5 ec 57 d2 c5 fd 11 54 24 08 c5 ec 57 d2 c5 fd 11 54 24 28 48 8d 44 24 48 c5 e8 57 d2 c5 fa 7f 10 c5 fa 7f 50 10 c5 fa 7f 50 20 c5 fa 7f 50 30 48 8d 54 24 08 c5 e8 57 d2 c5 fa 7f 12 c5 fa 7f 52 10 c5 fa 7f 52 20 c5 fa 7f 52 30 c5 fd 10 10 c5 fd 10 1a c5 ed 75 d3 c5 fc 28 da c4 e2 7d 17 c3 0f 92 c0 0f b6 c0 85 c0 74 0f c4 e2 7d 17 ca 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 c3}
; TermCode = RET_INTRx2
0000h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0016h vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
001bh vmovupd ymm2,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 20}
0020h vpcmpeqw ymm1,ymm1,ymm2                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 f5 75 ca}
0024h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0028h vmovupd [rsp+48h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 48}
002eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0032h vmovupd [rsp+68h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 68}
0038h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
003ch vmovupd [rsp+8],ymm2                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 08}
0042h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0046h vmovupd [rsp+28h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 28}
004ch lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0051h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0055h vmovdqu xmmword ptr [rax],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 10}
0059h vmovdqu xmmword ptr [rax+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 10}
005eh vmovdqu xmmword ptr [rax+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 20}
0063h vmovdqu xmmword ptr [rax+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 30}
0068h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
006dh vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0071h vmovdqu xmmword ptr [rdx],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 12}
0075h vmovdqu xmmword ptr [rdx+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 10}
007ah vmovdqu xmmword ptr [rdx+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 20}
007fh vmovdqu xmmword ptr [rdx+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 30}
0084h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
0088h vmovupd ymm3,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 1a}
008ch vpcmpeqw ymm2,ymm2,ymm3                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 ed 75 d3}
0090h vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0094h vptest ymm0,ymm3                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c3}
0099h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
009ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00a1h je short 00b2h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
00a3h vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
00a8h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
00abh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00aeh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00b0h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b4h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00b7h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vsame<uint>(in Vector512<uint> x, in Vector512<uint> y)
; vsame__g512x32u_512x32u[191] = {48 81 ec 88 00 00 00 c5 f8 77 c5 fd 10 01 c5 fd 10 0a c5 fd 76 c1 c5 fd 10 49 20 c5 fd 10 52 20 c5 f5 76 ca c5 ec 57 d2 c5 fd 11 54 24 48 c5 ec 57 d2 c5 fd 11 54 24 68 c5 ec 57 d2 c5 fd 11 54 24 08 c5 ec 57 d2 c5 fd 11 54 24 28 48 8d 44 24 48 c5 e8 57 d2 c5 fa 7f 10 c5 fa 7f 50 10 c5 fa 7f 50 20 c5 fa 7f 50 30 48 8d 54 24 08 c5 e8 57 d2 c5 fa 7f 12 c5 fa 7f 52 10 c5 fa 7f 52 20 c5 fa 7f 52 30 c5 fd 10 10 c5 fd 10 1a c5 ed 76 d3 c5 fc 28 da c4 e2 7d 17 c3 0f 92 c0 0f b6 c0 85 c0 74 0f c4 e2 7d 17 ca 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 c3}
; TermCode = RET_INTRx2
0000h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0016h vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
001bh vmovupd ymm2,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 20}
0020h vpcmpeqd ymm1,ymm1,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 ca}
0024h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0028h vmovupd [rsp+48h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 48}
002eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0032h vmovupd [rsp+68h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 68}
0038h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
003ch vmovupd [rsp+8],ymm2                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 08}
0042h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0046h vmovupd [rsp+28h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 28}
004ch lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0051h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0055h vmovdqu xmmword ptr [rax],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 10}
0059h vmovdqu xmmword ptr [rax+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 10}
005eh vmovdqu xmmword ptr [rax+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 20}
0063h vmovdqu xmmword ptr [rax+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 30}
0068h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
006dh vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0071h vmovdqu xmmword ptr [rdx],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 12}
0075h vmovdqu xmmword ptr [rdx+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 10}
007ah vmovdqu xmmword ptr [rdx+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 20}
007fh vmovdqu xmmword ptr [rdx+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 30}
0084h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
0088h vmovupd ymm3,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 1a}
008ch vpcmpeqd ymm2,ymm2,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d3}
0090h vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0094h vptest ymm0,ymm3                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c3}
0099h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
009ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00a1h je short 00b2h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
00a3h vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
00a8h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
00abh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00aeh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00b0h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b4h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00b7h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vsame<int>(in Vector512<int> x, in Vector512<int> y)
; vsame__g512x32i_512x32i[191] = {48 81 ec 88 00 00 00 c5 f8 77 c5 fd 10 01 c5 fd 10 0a c5 fd 76 c1 c5 fd 10 49 20 c5 fd 10 52 20 c5 f5 76 ca c5 ec 57 d2 c5 fd 11 54 24 48 c5 ec 57 d2 c5 fd 11 54 24 68 c5 ec 57 d2 c5 fd 11 54 24 08 c5 ec 57 d2 c5 fd 11 54 24 28 48 8d 44 24 48 c5 e8 57 d2 c5 fa 7f 10 c5 fa 7f 50 10 c5 fa 7f 50 20 c5 fa 7f 50 30 48 8d 54 24 08 c5 e8 57 d2 c5 fa 7f 12 c5 fa 7f 52 10 c5 fa 7f 52 20 c5 fa 7f 52 30 c5 fd 10 10 c5 fd 10 1a c5 ed 76 d3 c5 fc 28 da c4 e2 7d 17 c3 0f 92 c0 0f b6 c0 85 c0 74 0f c4 e2 7d 17 ca 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 c3}
; TermCode = RET_INTRx2
0000h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0016h vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
001bh vmovupd ymm2,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 20}
0020h vpcmpeqd ymm1,ymm1,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 ca}
0024h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0028h vmovupd [rsp+48h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 48}
002eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0032h vmovupd [rsp+68h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 68}
0038h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
003ch vmovupd [rsp+8],ymm2                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 08}
0042h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0046h vmovupd [rsp+28h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 28}
004ch lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0051h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0055h vmovdqu xmmword ptr [rax],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 10}
0059h vmovdqu xmmword ptr [rax+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 10}
005eh vmovdqu xmmword ptr [rax+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 20}
0063h vmovdqu xmmword ptr [rax+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 30}
0068h lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
006dh vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0071h vmovdqu xmmword ptr [rdx],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 12}
0075h vmovdqu xmmword ptr [rdx+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 10}
007ah vmovdqu xmmword ptr [rdx+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 20}
007fh vmovdqu xmmword ptr [rdx+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 30}
0084h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
0088h vmovupd ymm3,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 1a}
008ch vpcmpeqd ymm2,ymm2,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d3}
0090h vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0094h vptest ymm0,ymm3                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c3}
0099h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
009ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
009fh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00a1h je short 00b2h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
00a3h vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
00a8h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
00abh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00aeh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00b0h jmp short 00b4h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b2h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b4h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00b7h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
00beh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vsame<ulong>(in Vector512<ulong> x, in Vector512<ulong> y)
; vsame__g512x64u_512x64u[194] = {48 81 ec 88 00 00 00 c5 f8 77 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 29 c1 c5 fd 10 49 20 c5 fd 10 52 20 c4 e2 75 29 ca c5 ec 57 d2 c5 fd 11 54 24 48 c5 ec 57 d2 c5 fd 11 54 24 68 c5 ec 57 d2 c5 fd 11 54 24 08 c5 ec 57 d2 c5 fd 11 54 24 28 48 8d 44 24 48 c5 e8 57 d2 c5 fa 7f 10 c5 fa 7f 50 10 c5 fa 7f 50 20 c5 fa 7f 50 30 48 8d 54 24 08 c5 e8 57 d2 c5 fa 7f 12 c5 fa 7f 52 10 c5 fa 7f 52 20 c5 fa 7f 52 30 c5 fd 10 10 c5 fd 10 1a c4 e2 6d 29 d3 c5 fc 28 da c4 e2 7d 17 c3 0f 92 c0 0f b6 c0 85 c0 74 0f c4 e2 7d 17 ca 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 c3}
; TermCode = RET_INTRx2
0000h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0017h vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
001ch vmovupd ymm2,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 20}
0021h vpcmpeqq ymm1,ymm1,ymm2                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 ca}
0026h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
002ah vmovupd [rsp+48h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 48}
0030h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0034h vmovupd [rsp+68h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 68}
003ah vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
003eh vmovupd [rsp+8],ymm2                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 08}
0044h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0048h vmovupd [rsp+28h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 28}
004eh lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0053h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0057h vmovdqu xmmword ptr [rax],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 10}
005bh vmovdqu xmmword ptr [rax+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 10}
0060h vmovdqu xmmword ptr [rax+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 20}
0065h vmovdqu xmmword ptr [rax+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 30}
006ah lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
006fh vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0073h vmovdqu xmmword ptr [rdx],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 12}
0077h vmovdqu xmmword ptr [rdx+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 10}
007ch vmovdqu xmmword ptr [rdx+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 20}
0081h vmovdqu xmmword ptr [rdx+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 30}
0086h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
008ah vmovupd ymm3,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 1a}
008eh vpcmpeqq ymm2,ymm2,ymm3                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 6d 29 d3}
0093h vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0097h vptest ymm0,ymm3                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c3}
009ch setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
009fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a2h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00a4h je short 00b5h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
00a6h vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
00abh setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
00aeh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00b1h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00b3h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b5h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bah add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
00c1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vsame<long>(in Vector512<long> x, in Vector512<long> y)
; vsame__g512x64i_512x64i[194] = {48 81 ec 88 00 00 00 c5 f8 77 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 29 c1 c5 fd 10 49 20 c5 fd 10 52 20 c4 e2 75 29 ca c5 ec 57 d2 c5 fd 11 54 24 48 c5 ec 57 d2 c5 fd 11 54 24 68 c5 ec 57 d2 c5 fd 11 54 24 08 c5 ec 57 d2 c5 fd 11 54 24 28 48 8d 44 24 48 c5 e8 57 d2 c5 fa 7f 10 c5 fa 7f 50 10 c5 fa 7f 50 20 c5 fa 7f 50 30 48 8d 54 24 08 c5 e8 57 d2 c5 fa 7f 12 c5 fa 7f 52 10 c5 fa 7f 52 20 c5 fa 7f 52 30 c5 fd 10 10 c5 fd 10 1a c4 e2 6d 29 d3 c5 fc 28 da c4 e2 7d 17 c3 0f 92 c0 0f b6 c0 85 c0 74 0f c4 e2 7d 17 ca 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 c3}
; TermCode = RET_INTRx2
0000h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0017h vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
001ch vmovupd ymm2,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 20}
0021h vpcmpeqq ymm1,ymm1,ymm2                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 75 29 ca}
0026h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
002ah vmovupd [rsp+48h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 48}
0030h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0034h vmovupd [rsp+68h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 68}
003ah vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
003eh vmovupd [rsp+8],ymm2                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 08}
0044h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0048h vmovupd [rsp+28h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 28}
004eh lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0053h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0057h vmovdqu xmmword ptr [rax],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 10}
005bh vmovdqu xmmword ptr [rax+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 10}
0060h vmovdqu xmmword ptr [rax+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 20}
0065h vmovdqu xmmword ptr [rax+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 30}
006ah lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
006fh vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0073h vmovdqu xmmword ptr [rdx],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 12}
0077h vmovdqu xmmword ptr [rdx+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 10}
007ch vmovdqu xmmword ptr [rdx+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 20}
0081h vmovdqu xmmword ptr [rdx+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 30}
0086h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
008ah vmovupd ymm3,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 1a}
008eh vpcmpeqq ymm2,ymm2,ymm3                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 6d 29 d3}
0093h vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0097h vptest ymm0,ymm3                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c3}
009ch setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
009fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a2h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00a4h je short 00b5h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
00a6h vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
00abh setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
00aeh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00b1h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00b3h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b5h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bah add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
00c1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vsame<float>(in Vector512<float> x, in Vector512<float> y)
; vsame__g512x32f_512x32f[194] = {48 81 ec 88 00 00 00 c5 f8 77 c5 fd 10 01 c5 fd 10 0a c5 fc c2 c1 08 c5 fd 10 49 20 c5 fd 10 52 20 c5 f4 c2 ca 08 c5 ec 57 d2 c5 fd 11 54 24 48 c5 ec 57 d2 c5 fd 11 54 24 68 c5 ec 57 d2 c5 fd 11 54 24 08 c5 ec 57 d2 c5 fd 11 54 24 28 48 8d 44 24 48 c5 e8 57 d2 c5 fa 7f 10 c5 fa 7f 50 10 c5 fa 7f 50 20 c5 fa 7f 50 30 48 8d 54 24 08 c5 e8 57 d2 c5 fa 7f 12 c5 fa 7f 52 10 c5 fa 7f 52 20 c5 fa 7f 52 30 c5 fd 10 10 c5 fd 10 1a c5 ec c2 d3 08 c5 fc 28 da c4 e2 7d 0e c3 0f 92 c0 0f b6 c0 85 c0 74 0f c4 e2 7d 0e ca 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 c3}
; TermCode = RET_INTRx2
0000h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vcmpeq_uqps ymm0,ymm0,ymm1              ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[5]{c5 fc c2 c1 08}
0017h vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
001ch vmovupd ymm2,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 20}
0021h vcmpeq_uqps ymm1,ymm1,ymm2              ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[5]{c5 f4 c2 ca 08}
0026h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
002ah vmovupd [rsp+48h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 48}
0030h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0034h vmovupd [rsp+68h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 68}
003ah vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
003eh vmovupd [rsp+8],ymm2                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 08}
0044h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0048h vmovupd [rsp+28h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 28}
004eh lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0053h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0057h vmovdqu xmmword ptr [rax],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 10}
005bh vmovdqu xmmword ptr [rax+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 10}
0060h vmovdqu xmmword ptr [rax+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 20}
0065h vmovdqu xmmword ptr [rax+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 30}
006ah lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
006fh vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0073h vmovdqu xmmword ptr [rdx],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 12}
0077h vmovdqu xmmword ptr [rdx+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 10}
007ch vmovdqu xmmword ptr [rdx+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 20}
0081h vmovdqu xmmword ptr [rdx+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 30}
0086h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
008ah vmovupd ymm3,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 1a}
008eh vcmpeq_uqps ymm2,ymm2,ymm3              ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[5]{c5 ec c2 d3 08}
0093h vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0097h vtestps ymm0,ymm3                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c3}
009ch setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
009fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a2h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00a4h je short 00b5h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
00a6h vtestps ymm1,ymm2                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e ca}
00abh setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
00aeh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00b1h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00b3h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b5h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bah add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
00c1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vsame<double>(in Vector512<double> x, in Vector512<double> y)
; vsame__g512x64f_512x64f[194] = {48 81 ec 88 00 00 00 c5 f8 77 c5 fd 10 01 c5 fd 10 0a c5 fd c2 c1 08 c5 fd 10 49 20 c5 fd 10 52 20 c5 f5 c2 ca 08 c5 ec 57 d2 c5 fd 11 54 24 48 c5 ec 57 d2 c5 fd 11 54 24 68 c5 ec 57 d2 c5 fd 11 54 24 08 c5 ec 57 d2 c5 fd 11 54 24 28 48 8d 44 24 48 c5 e8 57 d2 c5 fa 7f 10 c5 fa 7f 50 10 c5 fa 7f 50 20 c5 fa 7f 50 30 48 8d 54 24 08 c5 e8 57 d2 c5 fa 7f 12 c5 fa 7f 52 10 c5 fa 7f 52 20 c5 fa 7f 52 30 c5 fd 10 10 c5 fd 10 1a c5 ed c2 d3 08 c5 fc 28 da c4 e2 7d 0f c3 0f 92 c0 0f b6 c0 85 c0 74 0f c4 e2 7d 0f ca 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 c3}
; TermCode = RET_INTRx2
0000h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0012h vcmpeq_uqpd ymm0,ymm0,ymm1              ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[5]{c5 fd c2 c1 08}
0017h vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
001ch vmovupd ymm2,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 52 20}
0021h vcmpeq_uqpd ymm1,ymm1,ymm2              ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[5]{c5 f5 c2 ca 08}
0026h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
002ah vmovupd [rsp+48h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 48}
0030h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0034h vmovupd [rsp+68h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 68}
003ah vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
003eh vmovupd [rsp+8],ymm2                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 08}
0044h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0048h vmovupd [rsp+28h],ymm2                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 54 24 28}
004eh lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0053h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0057h vmovdqu xmmword ptr [rax],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 10}
005bh vmovdqu xmmword ptr [rax+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 10}
0060h vmovdqu xmmword ptr [rax+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 20}
0065h vmovdqu xmmword ptr [rax+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 50 30}
006ah lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
006fh vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
0073h vmovdqu xmmword ptr [rdx],xmm2          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 12}
0077h vmovdqu xmmword ptr [rdx+10h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 10}
007ch vmovdqu xmmword ptr [rdx+20h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 20}
0081h vmovdqu xmmword ptr [rdx+30h],xmm2      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 52 30}
0086h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
008ah vmovupd ymm3,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 1a}
008eh vcmpeq_uqpd ymm2,ymm2,ymm3              ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[5]{c5 ed c2 d3 08}
0093h vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0097h vtestpd ymm0,ymm3                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c3}
009ch setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
009fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a2h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
00a4h je short 00b5h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
00a6h vtestpd ymm1,ymm2                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f ca}
00abh setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
00aeh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00b1h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00b3h jmp short 00b7h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
00b5h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00b7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00bah add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
00c1h ret                                     ; RET || C3 || encoded[1]{c3}
