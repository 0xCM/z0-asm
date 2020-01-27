------------------------------------------------------------------------------------------------------------------------
; bit vnonz<byte>(in Vector512<byte> src)
; vnonz__g512x8u[64] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 85 c0 75 1c c5 fd 10 41 20 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001eh jne short 003ch                         ; JNE rel8 || 75 cb || encoded[2]{75 1c}
0020h vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0025h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
002ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0032h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<sbyte>(in Vector512<sbyte> src)
; vnonz__g512x8i[64] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 85 c0 75 1c c5 fd 10 41 20 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001eh jne short 003ch                         ; JNE rel8 || 75 cb || encoded[2]{75 1c}
0020h vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0025h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
002ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0032h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<ushort>(in Vector512<ushort> src)
; vnonz__g512x16u[64] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 85 c0 75 1c c5 fd 10 41 20 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001eh jne short 003ch                         ; JNE rel8 || 75 cb || encoded[2]{75 1c}
0020h vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0025h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
002ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0032h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<short>(in Vector512<short> src)
; vnonz__g512x16i[64] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 85 c0 75 1c c5 fd 10 41 20 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001eh jne short 003ch                         ; JNE rel8 || 75 cb || encoded[2]{75 1c}
0020h vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0025h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
002ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0032h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<uint>(in Vector512<uint> src)
; vnonz__g512x32u[64] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 85 c0 75 1c c5 fd 10 41 20 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001eh jne short 003ch                         ; JNE rel8 || 75 cb || encoded[2]{75 1c}
0020h vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0025h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
002ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0032h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<int>(in Vector512<int> src)
; vnonz__g512x32i[64] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 85 c0 75 1c c5 fd 10 41 20 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001eh jne short 003ch                         ; JNE rel8 || 75 cb || encoded[2]{75 1c}
0020h vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0025h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
002ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0032h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<ulong>(in Vector512<ulong> src)
; vnonz__g512x64u[64] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 85 c0 75 1c c5 fd 10 41 20 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001eh jne short 003ch                         ; JNE rel8 || 75 cb || encoded[2]{75 1c}
0020h vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0025h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
002ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0032h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<long>(in Vector512<long> src)
; vnonz__g512x64i[64] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 85 c0 75 1c c5 fd 10 41 20 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001eh jne short 003ch                         ; JNE rel8 || 75 cb || encoded[2]{75 1c}
0020h vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0025h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
002ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0032h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<float>(in Vector512<float> src)
; vnonz__g512x32f[64] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 0e c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 85 c0 75 1c c5 fd 10 41 20 c4 e2 7d 0e c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vtestps ymm0,ymm0                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001eh jne short 003ch                         ; JNE rel8 || 75 cb || encoded[2]{75 1c}
0020h vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0025h vtestps ymm0,ymm0                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c0}
002ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0032h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<double>(in Vector512<double> src)
; vnonz__g512x64f[64] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 0f c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 85 c0 75 1c c5 fd 10 41 20 c4 e2 7d 0f c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vtestpd ymm0,ymm0                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001eh jne short 003ch                         ; JNE rel8 || 75 cb || encoded[2]{75 1c}
0020h vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0025h vtestpd ymm0,ymm0                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c0}
002ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0032h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0035h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh ret                                     ; RET || C3 || encoded[1]{c3}