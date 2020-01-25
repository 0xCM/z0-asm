; long f3b<long>(long a, long b, long c)
; X3B_g64i[7ff7c6b92a50h, 7ff7c6b92a6fh][31] = {56 48 83 ec 20 48 8b f1 48 f7 d6 49 23 f0 48 8b ca e8 d2 2e fe ff 48 0b c6 48 83 c4 20 5e c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:953
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
000bh and rsi,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 f0}
000eh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0011h call 7ff7c6b75938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 2e fe ff}
0016h or rax,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c6}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
