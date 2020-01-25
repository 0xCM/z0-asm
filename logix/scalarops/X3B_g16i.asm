; Int16 f3b<Int16>(Int16 a, Int16 b, Int16 c)
; X3B_g16i[7ff7c6b92970h, 7ff7c6b929a6h][54] = {56 48 83 ec 20 48 0f bf c9 f7 d1 48 0f bf c9 49 0f bf c0 23 c8 48 0f bf f1 48 0f bf ca e8 3e ee fd ff 48 0f bf c0 48 0f bf d6 0b c2 48 0f bf c0 48 83 c4 20 5e c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:948
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0009h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
000bh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
000fh movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0013h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0015h movsx rsi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f1}
0019h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
001dh call 7ff7c6b717d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e ee fd ff}
0022h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0026h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
002ah or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002ch movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0030h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0034h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
