; int f51<int>(int a, int b, int c)
; X51_g32i[7ff7c6b8c180h, 7ff7c6b8c19fh][31] = {57 56 48 83 ec 28 8b f1 41 8b f8 f7 d7 8b ca e8 7c 77 fe ff 0b c6 23 c7 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:47:371
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
000bh not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh call 7ff7c6b73910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 77 fe ff}
0014h or eax,esi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c6}
0016h and eax,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c7}
0018h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
