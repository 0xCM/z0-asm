; BitMatrix<int> true<int>(in BitMatrix<int> A, in BitMatrix<int> B)
; bm~true__g32i[7ff7c6b60800h, 7ff7c6b6081eh][30] = {56 48 83 ec 20 48 8b f1 48 8b ce ba ff ff ff ff e8 2b 26 ff ff 48 8b c6 48 83 c4 20 5e c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:37:856
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
000bh mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0010h call 7ff7c6b52e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 26 ff ff}
0015h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0018h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
