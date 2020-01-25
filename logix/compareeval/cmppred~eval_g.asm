; bit eval<double>(IComparisonPred<double> expr)
; cmppred~eval_g[7ff7c6e64eb0h, 7ff7c6e64f3dh][141] = {57 56 48 83 ec 38 c5 f8 77 c5 f8 29 74 24 20 48 8b f1 48 8b ce 49 bb c8 11 25 c6 f7 7f 00 00 39 09 ff 15 f1 c2 3e ff 8b f8 48 8b ce 49 bb d0 11 25 c6 f7 7f 00 00 39 09 ff 15 e2 c2 3e ff 48 8b c8 e8 d2 f7 ff ff c5 fb 10 70 08 48 8b ce 49 bb d8 11 25 c6 f7 7f 00 00 39 09 ff 15 c8 c2 3e ff 48 8b c8 e8 b0 f7 ff ff c5 fb 10 50 08 8b cf c5 f8 28 ce 48 b8 a0 47 e6 c6 f7 7f 00 00 c5 f8 28 74 24 20 48 83 c4 38 5e 5f 48 ff e0 cc}
; Capture completion code, INTRx2
; 2020-01-24 02:54:57:383
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+20h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 20}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0015h mov r11,7ff7c62511c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 11 25 c6 f7 7f 00 00}
001fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0021h call qword ptr [7ff7c62511c8h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 c2 3e ff}
0027h mov edi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f8}
0029h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
002ch mov r11,7ff7c62511d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 11 25 c6 f7 7f 00 00}
0036h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0038h call qword ptr [7ff7c62511d0h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e2 c2 3e ff}
003eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0041h call 7ff7c6e646c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 f7 ff ff}
0046h vmovsd xmm6,qword ptr [rax+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 70 08}
004bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
004eh mov r11,7ff7c62511d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 11 25 c6 f7 7f 00 00}
0058h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
005ah call qword ptr [7ff7c62511d8h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 c2 3e ff}
0060h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0063h call 7ff7c6e646c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 f7 ff ff}
0068h vmovsd xmm2,qword ptr [rax+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 50 08}
006dh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
006fh vmovaps xmm1,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ce}
0073h mov rax,7ff7c6e647a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 47 e6 c6 f7 7f 00 00}
007dh vmovaps xmm6,[rsp+20h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 20}
0083h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0087h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0088h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0089h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
008ch int 3                                   ; INT3 || CC || encoded[1]{cc}
