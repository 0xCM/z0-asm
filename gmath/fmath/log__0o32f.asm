; float log(float src, float b)
; log__0o32f[7ff7c718b250h, 7ff7c718b282h][50] = {48 83 ec 28 c5 f8 77 48 89 54 24 38 48 8d 44 24 38 0f b6 10 c5 fa 10 48 04 84 d2 75 0a c5 fa 10 0d 13 00 00 00 eb 00 e8 2c 94 ff ff 90 48 83 c4 28 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:37:786
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ch lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0011h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0014h vmovss xmm1,dword ptr [rax+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 48 04}
0019h test dl,dl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 d2}
001bh jne short 0027h                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
001dh vmovss xmm1,dword ptr [7ff7c718b288h]   ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 0d 13 00 00 00}
0025h jmp short 0027h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0027h call 7ff7c71846a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 94 ff ff}
002ch nop                                     ; NOP || o32 90 || encoded[1]{90}
002dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
