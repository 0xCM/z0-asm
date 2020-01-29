------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vmakemask<byte>(ushort src)
; vmakemask_g16u[56] = {c5 f8 77 66 90 0f b7 c2 0f b6 d0 49 b8 80 80 80 80 80 80 80 80 c4 c2 eb f5 d0 c4 e1 f9 6e c2 c1 e8 08 0f b6 c0 c4 c2 fb f5 c0 c4 e3 f9 22 c0 01 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
000bh mov r8,8080808080808080h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 80 80 80 80 80 80 80 80}
0015h pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
001ah vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
001fh shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h pdep rax,rax,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c0}
002ah vpinsrq xmm0,xmm0,rax,1                 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 e3 f9 22 c0 01}
0030h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0034h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vmakemask<ushort>(ushort src)
; vmakemask_g16u[56] = {c5 f8 77 66 90 0f b7 c2 0f b6 d0 49 b8 80 80 80 80 80 80 80 80 c4 c2 eb f5 d0 c4 e1 f9 6e c2 c1 e8 08 0f b6 c0 c4 c2 fb f5 c0 c4 e3 f9 22 c0 01 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
000bh mov r8,8080808080808080h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 80 80 80 80 80 80 80 80}
0015h pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
001ah vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
001fh shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h pdep rax,rax,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c0}
002ah vpinsrq xmm0,xmm0,rax,1                 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 e3 f9 22 c0 01}
0030h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0034h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vmakemask<uint>(ushort src)
; vmakemask_g16u[56] = {c5 f8 77 66 90 0f b7 c2 0f b6 d0 49 b8 80 80 80 80 80 80 80 80 c4 c2 eb f5 d0 c4 e1 f9 6e c2 c1 e8 08 0f b6 c0 c4 c2 fb f5 c0 c4 e3 f9 22 c0 01 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
000bh mov r8,8080808080808080h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 80 80 80 80 80 80 80 80}
0015h pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
001ah vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
001fh shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h pdep rax,rax,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c0}
002ah vpinsrq xmm0,xmm0,rax,1                 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 e3 f9 22 c0 01}
0030h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0034h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vmakemask<ulong>(ushort src)
; vmakemask_g16u[56] = {c5 f8 77 66 90 0f b7 c2 0f b6 d0 49 b8 80 80 80 80 80 80 80 80 c4 c2 eb f5 d0 c4 e1 f9 6e c2 c1 e8 08 0f b6 c0 c4 c2 fb f5 c0 c4 e3 f9 22 c0 01 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
000bh mov r8,8080808080808080h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 80 80 80 80 80 80 80 80}
0015h pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
001ah vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
001fh shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h pdep rax,rax,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c0}
002ah vpinsrq xmm0,xmm0,rax,1                 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 e3 f9 22 c0 01}
0030h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0034h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vmakemask<byte>(ushort src, byte index)
; vmakemask_g16u_8u[63] = {c5 f8 77 66 90 48 8b c1 41 0f b6 c8 49 b8 01 01 01 01 01 01 01 01 49 d3 e0 0f b7 d2 0f b6 ca c4 c2 f3 f5 c8 c4 e1 f9 6e c1 c1 ea 08 0f b6 d2 c4 c2 eb f5 d0 c4 e3 f9 22 c2 01 c5 f9 11 00 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0016h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0019h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001ch movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
001fh pdep rcx,rcx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c8}
0024h vmovq xmm0,rcx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c1}
0029h shr edx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 08}
002ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002fh pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
0034h vpinsrq xmm0,xmm0,rdx,1                 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 e3 f9 22 c2 01}
003ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vmakemask<ushort>(ushort src, byte index)
; vmakemask_g16u_8u[63] = {c5 f8 77 66 90 48 8b c1 41 0f b6 c8 49 b8 01 01 01 01 01 01 01 01 49 d3 e0 0f b7 d2 0f b6 ca c4 c2 f3 f5 c8 c4 e1 f9 6e c1 c1 ea 08 0f b6 d2 c4 c2 eb f5 d0 c4 e3 f9 22 c2 01 c5 f9 11 00 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0016h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0019h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001ch movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
001fh pdep rcx,rcx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c8}
0024h vmovq xmm0,rcx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c1}
0029h shr edx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 08}
002ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002fh pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
0034h vpinsrq xmm0,xmm0,rdx,1                 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 e3 f9 22 c2 01}
003ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vmakemask<uint>(ushort src, byte index)
; vmakemask_g16u_8u[63] = {c5 f8 77 66 90 48 8b c1 41 0f b6 c8 49 b8 01 01 01 01 01 01 01 01 49 d3 e0 0f b7 d2 0f b6 ca c4 c2 f3 f5 c8 c4 e1 f9 6e c1 c1 ea 08 0f b6 d2 c4 c2 eb f5 d0 c4 e3 f9 22 c2 01 c5 f9 11 00 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0016h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0019h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001ch movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
001fh pdep rcx,rcx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c8}
0024h vmovq xmm0,rcx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c1}
0029h shr edx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 08}
002ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002fh pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
0034h vpinsrq xmm0,xmm0,rdx,1                 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 e3 f9 22 c2 01}
003ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vmakemask<ulong>(ushort src, byte index)
; vmakemask_g16u_8u[63] = {c5 f8 77 66 90 48 8b c1 41 0f b6 c8 49 b8 01 01 01 01 01 01 01 01 49 d3 e0 0f b7 d2 0f b6 ca c4 c2 f3 f5 c8 c4 e1 f9 6e c1 c1 ea 08 0f b6 d2 c4 c2 eb f5 d0 c4 e3 f9 22 c2 01 c5 f9 11 00 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
0016h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0019h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001ch movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
001fh pdep rcx,rcx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 f3 f5 c8}
0024h vmovq xmm0,rcx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c1}
0029h shr edx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 08}
002ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002fh pdep rdx,rdx,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 eb f5 d0}
0034h vpinsrq xmm0,xmm0,rdx,1                 ; VPINSRQ xmm1, xmm2, r/m64, imm8 || VEX.128.66.0F3A.W1 22 /r ib || encoded[6]{c4 e3 f9 22 c2 01}
003ah vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
