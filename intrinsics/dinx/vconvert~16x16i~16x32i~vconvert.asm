; Vector512<int> vconvert(in Block128<Int16> src, N512 w, int t)
; vconvert~16x16i~16x32i~vconvert[7ff7c6bd4190h, 7ff7c6bd41b9h][41] = {c5 f8 77 66 90 48 8b 02 48 8b d0 c4 e2 7d 23 02 48 83 c0 10 c4 e2 7d 23 08 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:58:953
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000bh vpmovsxwd ymm0,xmmword ptr [rdx]        ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 02}
0010h add rax,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 10}
0014h vpmovsxwd ymm1,xmmword ptr [rax]        ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 08}
0019h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001dh vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0022h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0025h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
