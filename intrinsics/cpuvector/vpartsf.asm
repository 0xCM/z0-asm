------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vpartsf(N128 w, float x0, float x1, float x2, float x3)
; vpartsf_(n128,32f,32f,32f,32f)[43] = {c5 f8 77 66 90 c4 e3 69 21 d3 10 c5 fa 10 44 24 28 c4 e3 69 21 d0 20 c5 fa 10 44 24 30 c4 e3 69 21 c0 30 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vinsertps xmm2,xmm2,xmm3,10h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d3 10}
000bh vmovss xmm0,dword ptr [rsp+28h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 28}
0011h vinsertps xmm2,xmm2,xmm0,20h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d0 20}
0017h vmovss xmm0,dword ptr [rsp+30h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 30}
001dh vinsertps xmm0,xmm2,xmm0,30h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 c0 30}
0023h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0027h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vpartsf(N128 w, double x0, double x1)
; vpartsf_(n128,64f,64f)[17] = {c5 f8 77 66 90 c5 e8 16 c3 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovlhps xmm0,xmm2,xmm3                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 e8 16 c3}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vpartsf(N256 w, float x0, float x1, float x2, float x3, float x4, float x5, float x6, float x7)
; vpartsf_(n256,32f,32f,32f,32f,32f,32f,32f,32f)[94] = {c5 f8 77 66 90 c4 e3 69 21 d3 10 c5 fa 10 44 24 28 c4 e3 69 21 d0 20 c5 fa 10 44 24 30 c4 e3 69 21 c0 30 c5 fa 10 4c 24 38 c5 fa 10 54 24 40 c4 e3 71 21 ca 10 c5 fa 10 54 24 48 c4 e3 71 21 ca 20 c5 fa 10 54 24 50 c4 e3 71 21 ca 30 c4 e3 7d 18 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vinsertps xmm2,xmm2,xmm3,10h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d3 10}
000bh vmovss xmm0,dword ptr [rsp+28h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 28}
0011h vinsertps xmm2,xmm2,xmm0,20h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d0 20}
0017h vmovss xmm0,dword ptr [rsp+30h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 30}
001dh vinsertps xmm0,xmm2,xmm0,30h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 c0 30}
0023h vmovss xmm1,dword ptr [rsp+38h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 4c 24 38}
0029h vmovss xmm2,dword ptr [rsp+40h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 40}
002fh vinsertps xmm1,xmm1,xmm2,10h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 10}
0035h vmovss xmm2,dword ptr [rsp+48h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 48}
003bh vinsertps xmm1,xmm1,xmm2,20h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 20}
0041h vmovss xmm2,dword ptr [rsp+50h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 50}
0047h vinsertps xmm1,xmm1,xmm2,30h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 30}
004dh vinsertf128 ymm0,ymm0,xmm1,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 7d 18 c1 01}
0053h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vpartsf(N256 w, double x0, double x1, double x2, double x3)
; vpartsf_(n256,64f,64f,64f,64f)[42] = {c5 f8 77 66 90 c5 e8 16 c3 c5 fb 10 4c 24 28 c5 fb 10 54 24 30 c5 f0 16 ca c4 e3 7d 18 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovlhps xmm0,xmm2,xmm3                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 e8 16 c3}
0009h vmovsd xmm1,qword ptr [rsp+28h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 4c 24 28}
000fh vmovsd xmm2,qword ptr [rsp+30h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 54 24 30}
0015h vmovlhps xmm1,xmm1,xmm2                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 f0 16 ca}
0019h vinsertf128 ymm0,ymm0,xmm1,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 7d 18 c1 01}
001fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0023h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0026h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<float> vpartsf(N512 w, float x0, float x1, float x2, float x3, float x4, float x5, float x6, float x7, float x8, float x9, float x10, float x11, float x12, float x13, float x14, float x15)
; vpartsf_(n512,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f,32f)[198] = {c5 f8 77 66 90 c4 e3 69 21 d3 10 c5 fa 10 44 24 28 c4 e3 69 21 d0 20 c5 fa 10 44 24 30 c4 e3 69 21 c0 30 c5 fa 10 4c 24 38 c5 fa 10 54 24 40 c4 e3 71 21 ca 10 c5 fa 10 54 24 48 c4 e3 71 21 ca 20 c5 fa 10 54 24 50 c4 e3 71 21 ca 30 c4 e3 7d 18 c1 01 c5 fa 10 4c 24 58 c5 fa 10 54 24 60 c4 e3 71 21 ca 10 c5 fa 10 54 24 68 c4 e3 71 21 ca 20 c5 fa 10 54 24 70 c4 e3 71 21 ca 30 c5 fa 10 54 24 78 c5 fa 10 9c 24 80 00 00 00 c4 e3 69 21 d3 10 c5 fa 10 9c 24 88 00 00 00 c4 e3 69 21 d3 20 c5 fa 10 9c 24 90 00 00 00 c4 e3 69 21 d3 30 c4 e3 75 18 ca 01 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vinsertps xmm2,xmm2,xmm3,10h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d3 10}
000bh vmovss xmm0,dword ptr [rsp+28h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 28}
0011h vinsertps xmm2,xmm2,xmm0,20h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d0 20}
0017h vmovss xmm0,dword ptr [rsp+30h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 30}
001dh vinsertps xmm0,xmm2,xmm0,30h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 c0 30}
0023h vmovss xmm1,dword ptr [rsp+38h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 4c 24 38}
0029h vmovss xmm2,dword ptr [rsp+40h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 40}
002fh vinsertps xmm1,xmm1,xmm2,10h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 10}
0035h vmovss xmm2,dword ptr [rsp+48h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 48}
003bh vinsertps xmm1,xmm1,xmm2,20h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 20}
0041h vmovss xmm2,dword ptr [rsp+50h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 50}
0047h vinsertps xmm1,xmm1,xmm2,30h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 30}
004dh vinsertf128 ymm0,ymm0,xmm1,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 7d 18 c1 01}
0053h vmovss xmm1,dword ptr [rsp+58h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 4c 24 58}
0059h vmovss xmm2,dword ptr [rsp+60h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 60}
005fh vinsertps xmm1,xmm1,xmm2,10h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 10}
0065h vmovss xmm2,dword ptr [rsp+68h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 68}
006bh vinsertps xmm1,xmm1,xmm2,20h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 20}
0071h vmovss xmm2,dword ptr [rsp+70h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 70}
0077h vinsertps xmm1,xmm1,xmm2,30h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 71 21 ca 30}
007dh vmovss xmm2,dword ptr [rsp+78h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 78}
0083h vmovss xmm3,dword ptr [rsp+80h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[9]{c5 fa 10 9c 24 80 00 00 00}
008ch vinsertps xmm2,xmm2,xmm3,10h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d3 10}
0092h vmovss xmm3,dword ptr [rsp+88h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[9]{c5 fa 10 9c 24 88 00 00 00}
009bh vinsertps xmm2,xmm2,xmm3,20h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d3 20}
00a1h vmovss xmm3,dword ptr [rsp+90h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[9]{c5 fa 10 9c 24 90 00 00 00}
00aah vinsertps xmm2,xmm2,xmm3,30h            ; VINSERTPS xmm1, xmm2, xmm3/m32, imm8 || VEX.128.66.0F3A.WIG 21 /r ib || encoded[6]{c4 e3 69 21 d3 30}
00b0h vinsertf128 ymm1,ymm1,xmm2,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 75 18 ca 01}
00b6h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00bah vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
00bfh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00c2h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00c5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<double> vpartsf(N512 w, double x0, double x1, double x2, double x3, double x4, double x5, double x6, double x7)
; vpartsf_(n512,64f,64f,64f,64f,64f,64f,64f,64f)[85] = {c5 f8 77 66 90 c5 e8 16 c3 c5 fb 10 4c 24 28 c5 fb 10 54 24 30 c5 f0 16 ca c4 e3 7d 18 c1 01 c5 fb 10 4c 24 38 c5 fb 10 54 24 40 c5 f0 16 ca c5 fb 10 54 24 48 c5 fb 10 5c 24 50 c5 e8 16 d3 c4 e3 75 18 ca 01 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovlhps xmm0,xmm2,xmm3                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 e8 16 c3}
0009h vmovsd xmm1,qword ptr [rsp+28h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 4c 24 28}
000fh vmovsd xmm2,qword ptr [rsp+30h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 54 24 30}
0015h vmovlhps xmm1,xmm1,xmm2                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 f0 16 ca}
0019h vinsertf128 ymm0,ymm0,xmm1,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 7d 18 c1 01}
001fh vmovsd xmm1,qword ptr [rsp+38h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 4c 24 38}
0025h vmovsd xmm2,qword ptr [rsp+40h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 54 24 40}
002bh vmovlhps xmm1,xmm1,xmm2                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 f0 16 ca}
002fh vmovsd xmm2,qword ptr [rsp+48h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 54 24 48}
0035h vmovsd xmm3,qword ptr [rsp+50h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 5c 24 50}
003bh vmovlhps xmm2,xmm2,xmm3                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 e8 16 d3}
003fh vinsertf128 ymm1,ymm1,xmm2,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 75 18 ca 01}
0045h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0049h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
