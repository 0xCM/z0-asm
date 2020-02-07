------------------------------------------------------------------------------------------------------------------------
; float log(float src, Nullable<float> b)
; log_32f[50] = {48 83 ec 28 c5 f8 77 48 89 54 24 38 48 8d 44 24 38 0f b6 10 c5 fa 10 48 04 84 d2 75 0a c5 fa 10 0d 13 00 00 00 eb 00 e8 2c ed ff ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov [rsp+38h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 38}
000ch lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0011h movzx edx,byte ptr [rax]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 10}
0014h vmovss xmm1,dword ptr [rax+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 48 04}
0019h test dl,dl                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 d2}
001bh jne short 0027h                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
001dh vmovss xmm1,dword ptr [rip+13h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[8]{c5 fa 10 0d 13 00 00 00}
0025h jmp short 0027h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0027h call 7ff7c8283968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c ed ff ff}
002ch nop                                     ; NOP || o32 90 || encoded[1]{90}
002dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double log(double src, Nullable<double> b)
; log_64f[40] = {48 83 ec 28 c5 f8 77 0f b6 02 c5 fb 10 4a 08 84 c0 75 0a c5 fb 10 0d 15 00 00 00 eb 00 e8 e6 32 51 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h movzx eax,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 02}
000ah vmovsd xmm1,qword ptr [rdx+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4a 08}
000fh test al,al                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c0}
0011h jne short 001dh                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
0013h vmovsd xmm1,qword ptr [rip+15h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 0d 15 00 00 00}
001bh jmp short 001dh                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
001dh call 7ff7c7797f68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 32 51 ff}
0022h nop                                     ; NOP || o32 90 || encoded[1]{90}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
