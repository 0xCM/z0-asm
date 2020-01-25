; Vector256<long> vbsll(Vector256<long> x, byte count)
; vbsll__256x64i[7ff7c71d8a70h, 7ff7c71d8aa2h][50] = {56 48 83 ec 50 c5 f8 77 48 8b f1 c5 fd 10 02 48 8b ce c5 fd 11 44 24 20 48 8d 54 24 20 45 0f b6 c0 e8 4a 17 1c ff 48 8b c6 c5 f8 77 48 83 c4 50 5e c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:03:020
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,50h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 50}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
000fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
001dh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0021h call 7ff7c639a1e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 17 1c ff}
0026h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch add rsp,50h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 50}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
