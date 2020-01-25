; double log(double src, double b)
; log__0o64f[7ff7c718b2a0h, 7ff7c718b2c8h][40] = {48 83 ec 28 c5 f8 77 0f b6 02 c5 fb 10 4a 08 84 c0 75 0a c5 fb 10 0d 15 00 00 00 eb 00 e8 96 95 22 ff 90 48 83 c4 28 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:37:787
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h movzx eax,byte ptr [rdx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 02}
000ah vmovsd xmm1,qword ptr [rdx+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4a 08}
000fh test al,al                              ; TEST r/m8, r8 || 84 /r || encoded[2]{84 c0}
0011h jne short 001dh                         ; JNE rel8 || 75 cb || encoded[2]{75 0a}
0013h vmovsd xmm1,qword ptr [7ff7c718b2d0h]   ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[8]{c5 fb 10 0d 15 00 00 00}
001bh jmp short 001dh                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
001dh call 7ff7c63b4858h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 95 22 ff}
0022h nop                                     ; NOP || o32 90 || encoded[1]{90}
0023h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
