------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vputcell<byte>(byte src, int index, Vector128<byte> dst)
; vputcell_g8u_32i_v128x8u[65] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 10 73 24 c5 f9 29 44 24 20 48 8d 44 24 20 4d 63 c0 42 88 14 00 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 d8 df 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0010h jae short 0036h                         ; JAE rel8 || 73 cb || encoded[2]{73 24}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8],dl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{42 88 14 00}
0024h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003bh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 df 0f ff}
0040h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vputcell<sbyte>(sbyte src, int index, Vector128<sbyte> dst)
; vputcell_g8i_32i_v128x8i[65] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 10 73 24 c5 f9 29 44 24 20 48 8d 44 24 20 4d 63 c0 42 88 14 00 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 78 df 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0010h jae short 0036h                         ; JAE rel8 || 73 cb || encoded[2]{73 24}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8],dl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{42 88 14 00}
0024h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003bh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 df 0f ff}
0040h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vputcell<ushort>(ushort src, int index, Vector128<ushort> dst)
; vputcell_g16u_32i_v128x16u[66] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 08 73 25 c5 f9 29 44 24 20 48 8d 44 24 20 4d 63 c0 66 42 89 14 40 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 17 df 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
0010h jae short 0037h                         ; JAE rel8 || 73 cb || encoded[2]{73 25}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*2],dx                       ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 42 89 14 40}
0025h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003ch call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 df 0f ff}
0041h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vputcell<short>(short src, int index, Vector128<short> dst)
; vputcell_g16i_32i_v128x16i[66] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 08 73 25 c5 f9 29 44 24 20 48 8d 44 24 20 4d 63 c0 66 42 89 14 40 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 b7 de 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
0010h jae short 0037h                         ; JAE rel8 || 73 cb || encoded[2]{73 25}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*2],dx                       ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 42 89 14 40}
0025h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003ch call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 de 0f ff}
0041h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vputcell<uint>(uint src, int index, Vector128<uint> dst)
; vputcell_g32u_32i_v128x32u[65] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 04 73 24 c5 f9 29 44 24 20 48 8d 44 24 20 4d 63 c0 42 89 14 80 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 58 de 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0010h jae short 0036h                         ; JAE rel8 || 73 cb || encoded[2]{73 24}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*4],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[4]{42 89 14 80}
0024h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003bh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 de 0f ff}
0040h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vputcell<int>(int src, int index, Vector128<int> dst)
; vputcell_g32i_32i_v128x32i[65] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 04 73 24 c5 f9 29 44 24 20 48 8d 44 24 20 4d 63 c0 42 89 14 80 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 f8 dd 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0010h jae short 0036h                         ; JAE rel8 || 73 cb || encoded[2]{73 24}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*4],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[4]{42 89 14 80}
0024h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003bh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 dd 0f ff}
0040h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vputcell<ulong>(ulong src, int index, Vector128<ulong> dst)
; vputcell_g64u_32i_v128x64u[65] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 02 73 24 c5 f9 29 44 24 20 48 8d 44 24 20 4d 63 c0 4a 89 14 c0 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 98 dd 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,2                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 02}
0010h jae short 0036h                         ; JAE rel8 || 73 cb || encoded[2]{73 24}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*8],rdx                      ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4a 89 14 c0}
0024h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003bh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 dd 0f ff}
0040h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vputcell<long>(long src, int index, Vector128<long> dst)
; vputcell_g64i_32i_v128x64i[65] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 02 73 24 c5 f9 29 44 24 20 48 8d 44 24 20 4d 63 c0 4a 89 14 c0 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 38 dd 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,2                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 02}
0010h jae short 0036h                         ; JAE rel8 || 73 cb || encoded[2]{73 24}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*8],rdx                      ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4a 89 14 c0}
0024h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003bh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 dd 0f ff}
0040h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vputcell<float>(float src, int index, Vector128<float> dst)
; vputcell_g32f_32i_v128x32f[66] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 04 73 25 c5 f9 29 44 24 20 48 8d 44 24 20 49 63 d0 c5 fa 11 0c 90 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 d7 dc 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0010h jae short 0037h                         ; JAE rel8 || 73 cb || encoded[2]{73 25}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0020h vmovss dword ptr [rax+rdx*4],xmm1       ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 0c 90}
0025h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003ch call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 dc 0f ff}
0041h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vputcell<double>(double src, int index, Vector128<double> dst)
; vputcell_g64f_32i_v128x64f[66] = {48 83 ec 38 c5 f8 77 c4 c1 79 10 01 41 83 f8 02 73 25 c5 f9 29 44 24 20 48 8d 44 24 20 49 63 d0 c5 fb 11 0c d0 c5 f9 28 44 24 20 c5 f9 11 01 48 8b c1 48 83 c4 38 c3 b9 15 00 00 00 e8 77 dc 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ch cmp r8d,2                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 02}
0010h jae short 0037h                         ; JAE rel8 || 73 cb || encoded[2]{73 25}
0012h vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0020h vmovsd qword ptr [rax+rdx*8],xmm1       ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 0c d0}
0025h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
002bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003ch call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 dc 0f ff}
0041h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vputcell<byte>(byte src, int index, Vector256<byte> dst)
; vputcell_g8u_32i_v256x8u[68] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 20 73 27 c5 fd 11 44 24 20 48 8d 44 24 20 4d 63 c0 42 88 14 00 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 05 d8 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 20}
0010h jae short 0039h                         ; JAE rel8 || 73 cb || encoded[2]{73 27}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8],dl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{42 88 14 00}
0024h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0034h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
0039h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003eh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 d8 0f ff}
0043h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vputcell<sbyte>(sbyte src, int index, Vector256<sbyte> dst)
; vputcell_g8i_32i_v256x8i[68] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 20 73 27 c5 fd 11 44 24 20 48 8d 44 24 20 4d 63 c0 42 88 14 00 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 a5 d7 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 20}
0010h jae short 0039h                         ; JAE rel8 || 73 cb || encoded[2]{73 27}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8],dl                         ; MOV r/m8, r8 || 88 /r || encoded[4]{42 88 14 00}
0024h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0034h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
0039h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003eh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 d7 0f ff}
0043h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vputcell<ushort>(ushort src, int index, Vector256<ushort> dst)
; vputcell_g16u_32i_v256x16u[69] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 10 73 28 c5 fd 11 44 24 20 48 8d 44 24 20 4d 63 c0 66 42 89 14 40 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 44 d7 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0010h jae short 003ah                         ; JAE rel8 || 73 cb || encoded[2]{73 28}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*2],dx                       ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 42 89 14 40}
0025h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003fh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 d7 0f ff}
0044h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vputcell<short>(short src, int index, Vector256<short> dst)
; vputcell_g16i_32i_v256x16i[69] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 10 73 28 c5 fd 11 44 24 20 48 8d 44 24 20 4d 63 c0 66 42 89 14 40 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 e4 d6 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 10}
0010h jae short 003ah                         ; JAE rel8 || 73 cb || encoded[2]{73 28}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*2],dx                       ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 42 89 14 40}
0025h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003fh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 d6 0f ff}
0044h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vputcell<uint>(uint src, int index, Vector256<uint> dst)
; vputcell_g32u_32i_v256x32u[68] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 08 73 27 c5 fd 11 44 24 20 48 8d 44 24 20 4d 63 c0 42 89 14 80 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 85 d6 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
0010h jae short 0039h                         ; JAE rel8 || 73 cb || encoded[2]{73 27}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*4],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[4]{42 89 14 80}
0024h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0034h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
0039h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003eh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 d6 0f ff}
0043h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vputcell<int>(int src, int index, Vector256<int> dst)
; vputcell_g32i_32i_v256x32i[68] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 08 73 27 c5 fd 11 44 24 20 48 8d 44 24 20 4d 63 c0 42 89 14 80 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 25 d6 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
0010h jae short 0039h                         ; JAE rel8 || 73 cb || encoded[2]{73 27}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*4],edx                      ; MOV r/m32, r32 || o32 89 /r || encoded[4]{42 89 14 80}
0024h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0034h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
0039h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003eh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 d6 0f ff}
0043h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vputcell<ulong>(ulong src, int index, Vector256<ulong> dst)
; vputcell_g64u_32i_v256x64u[68] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 04 73 27 c5 fd 11 44 24 20 48 8d 44 24 20 4d 63 c0 4a 89 14 c0 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 c5 d5 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0010h jae short 0039h                         ; JAE rel8 || 73 cb || encoded[2]{73 27}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*8],rdx                      ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4a 89 14 c0}
0024h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0034h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
0039h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003eh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d5 0f ff}
0043h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vputcell<long>(long src, int index, Vector256<long> dst)
; vputcell_g64i_32i_v256x64i[68] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 04 73 27 c5 fd 11 44 24 20 48 8d 44 24 20 4d 63 c0 4a 89 14 c0 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 65 d5 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0010h jae short 0039h                         ; JAE rel8 || 73 cb || encoded[2]{73 27}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
0020h mov [rax+r8*8],rdx                      ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4a 89 14 c0}
0024h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0031h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0034h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
0039h mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003eh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 d5 0f ff}
0043h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vputcell<float>(float src, int index, Vector256<float> dst)
; vputcell_g32f_32i_v256x32f[69] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 08 73 28 c5 fd 11 44 24 20 48 8d 44 24 20 49 63 d0 c5 fa 11 0c 90 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 04 d5 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 08}
0010h jae short 003ah                         ; JAE rel8 || 73 cb || encoded[2]{73 28}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0020h vmovss dword ptr [rax+rdx*4],xmm1       ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 0c 90}
0025h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003fh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 d5 0f ff}
0044h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vputcell<double>(double src, int index, Vector256<double> dst)
; vputcell_g64f_32i_v256x64f[69] = {48 83 ec 58 c5 f8 77 c4 c1 7d 10 01 41 83 f8 04 73 28 c5 fd 11 44 24 20 48 8d 44 24 20 49 63 d0 c5 fb 11 0c d0 c5 fd 10 44 24 20 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 58 c3 b9 15 00 00 00 e8 a4 d4 0f ff cc}
; TermCode = CTC_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 01}
000ch cmp r8d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 04}
0010h jae short 003ah                         ; JAE rel8 || 73 cb || encoded[2]{73 28}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001dh movsxd rdx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 d0}
0020h vmovsd qword ptr [rax+rdx*8],xmm1       ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 0c d0}
0025h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
002bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
003ah mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
003fh call 7ff7c77729c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 d4 0f ff}
0044h int 3                                   ; INT3 || CC || encoded[1]{cc}
