------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vbitclear<byte>(Vector256<byte> src, byte start, byte count)
; vbitclear__g256x8u_8u_8u[88] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 f0 f3 d1 44 0f b6 c9 41 0f b6 c8 41 d3 e1 41 0f b6 c9 81 f1 ff 00 00 00 0f b6 c9 88 4c 24 04 48 8d 4c 24 04 c4 e2 7d 78 44 24 04 c5 fd 10 0a c5 fd db c1 c5 fd 11 00 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0014h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0017h blsmsk rcx,r9                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d1}
001ch movzx r9d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c9}
0020h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0024h shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0027h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
002bh xor ecx,0ffh                            ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f1 ff 00 00 00}
0031h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0034h mov [rsp+4],cl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 04}
0038h lea rcx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 04}
003dh vpbroadcastb ymm0,byte ptr [rsp+4]      ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 44 24 04}
0044h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0048h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
004ch vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0050h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vbitclear<sbyte>(Vector256<sbyte> src, byte start, byte count)
; vbitclear__g256x8i_8u_8u[86] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 f0 f3 d1 4c 0f be c9 41 0f b6 c8 41 d3 e1 49 0f be c9 83 f1 7f 48 0f be c9 88 4c 24 04 48 8d 4c 24 04 c4 e2 7d 78 44 24 04 c5 fd 10 0a c5 fd db c1 c5 fd 11 00 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0014h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0017h blsmsk rcx,r9                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d1}
001ch movsx r9,cl                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c9}
0020h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0024h shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0027h movsx rcx,r9b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c9}
002bh xor ecx,7fh                             ; XOR r/m32, imm8 || o32 83 /6 ib || encoded[3]{83 f1 7f}
002eh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0032h mov [rsp+4],cl                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 04}
0036h lea rcx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 04}
003bh vpbroadcastb ymm0,byte ptr [rsp+4]      ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 44 24 04}
0042h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0046h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
004ah vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0051h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vbitclear<ushort>(Vector256<ushort> src, byte start, byte count)
; vbitclear__g256x16u_8u_8u[89] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 f0 f3 d1 44 0f b7 c9 41 0f b6 c8 41 d3 e1 41 0f b7 c9 81 f1 ff ff 00 00 0f b7 c9 66 89 4c 24 04 48 8d 4c 24 04 c4 e2 7d 79 44 24 04 c5 fd 10 0a c5 fd db c1 c5 fd 11 00 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0014h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0017h blsmsk rcx,r9                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d1}
001ch movzx r9d,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c9}
0020h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0024h shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0027h movzx ecx,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c9}
002bh xor ecx,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f1 ff ff 00 00}
0031h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0034h mov [rsp+4],cx                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 04}
0039h lea rcx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 04}
003eh vpbroadcastw ymm0,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 44 24 04}
0045h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0049h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
004dh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0051h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0054h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0058h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vbitclear<short>(Vector256<short> src, byte start, byte count)
; vbitclear__g256x16i_8u_8u[90] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 f0 f3 d1 4c 0f bf c9 41 0f b6 c8 41 d3 e1 49 0f bf c9 81 f1 ff 7f 00 00 48 0f bf c9 66 89 4c 24 04 48 8d 4c 24 04 c4 e2 7d 79 44 24 04 c5 fd 10 0a c5 fd db c1 c5 fd 11 00 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0014h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0017h blsmsk rcx,r9                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d1}
001ch movsx r9,cx                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c9}
0020h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0024h shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0027h movsx rcx,r9w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c9}
002bh xor ecx,7fffh                           ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f1 ff 7f 00 00}
0031h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0035h mov [rsp+4],cx                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 04}
003ah lea rcx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 04}
003fh vpbroadcastw ymm0,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 44 24 04}
0046h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
004ah vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
004eh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0052h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0055h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vbitclear<uint>(Vector256<uint> src, byte start, byte count)
; vbitclear__g256x32u_8u_8u[76] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 b0 f3 d1 41 0f b6 c8 41 d3 e1 41 8b c9 f7 d1 89 4c 24 04 48 8d 4c 24 04 c4 e2 7d 58 44 24 04 c5 fd 10 0a c5 fd db c1 c5 fd 11 00 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0014h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0017h blsmsk r9,r9                            ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 b0 f3 d1}
001ch movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0020h shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0023h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0026h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0028h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
002ch lea rcx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 04}
0031h vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
0038h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
003ch vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0040h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0044h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0047h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vbitclear<int>(Vector256<int> src, byte start, byte count)
; vbitclear__g256x32i_8u_8u[79] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 b0 f3 d1 41 0f b6 c8 41 d3 e1 41 81 f1 ff ff ff 7f 44 89 4c 24 04 48 8d 4c 24 04 c4 e2 7d 58 44 24 04 c5 fd 10 0a c5 fd db c1 c5 fd 11 00 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0014h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0017h blsmsk r9,r9                            ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 b0 f3 d1}
001ch movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0020h shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0023h xor r9d,7fffffffh                       ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f1 ff ff ff 7f}
002ah mov [rsp+4],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 4c 24 04}
002fh lea rcx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 04}
0034h vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
003bh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
003fh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0043h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0047h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vbitclear<ulong>(Vector256<ulong> src, byte start, byte count)
; vbitclear__g256x64u_8u_8u[75] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 b0 f3 d1 41 0f b6 c8 49 d3 e1 49 8b c9 48 f7 d1 48 89 0c 24 48 8d 0c 24 c4 e2 7d 59 04 24 c5 fd 10 0a c5 fd db c1 c5 fd 11 00 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0014h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0017h blsmsk r9,r9                            ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 b0 f3 d1}
001ch movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0020h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0023h mov rcx,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c9}
0026h not rcx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d1}
0029h mov [rsp],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 0c 24}
002dh lea rcx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 0c 24}
0031h vpbroadcastq ymm0,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 04 24}
0037h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
003bh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
003fh vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0043h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0046h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vbitclear<long>(Vector256<long> src, byte start, byte count)
; vbitclear__g256x64i_8u_8u[82] = {50 c5 f8 77 90 48 8b c1 41 0f b6 c9 ff c9 41 b9 01 00 00 00 49 d3 e1 c4 c2 b0 f3 d1 41 0f b6 c8 49 d3 e1 48 b9 ff ff ff ff ff ff ff 7f 49 33 c9 48 89 0c 24 48 8d 0c 24 c4 e2 7d 59 04 24 c5 fd 10 0a c5 fd db c1 c5 fd 11 00 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0014h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0017h blsmsk r9,r9                            ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 b0 f3 d1}
001ch movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0020h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0023h mov rcx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 ff ff ff ff ff ff ff 7f}
002dh xor rcx,r9                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c9}
0030h mov [rsp],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 0c 24}
0034h lea rcx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 0c 24}
0038h vpbroadcastq ymm0,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 04 24}
003eh vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0042h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0046h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
004ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
