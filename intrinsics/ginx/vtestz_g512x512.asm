------------------------------------------------------------------------------------------------------------------------
; bit vtestz<byte>(in Vector512<byte> src, in Vector512<byte> mask)
; vtestz__g512x8u_512x8u[61] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 94 c0 0f b6 c0 85 c0 74 1b c5 fd 10 41 20 c5 fd 10 4a 20 c4 e2 7d 17 c1 0f 94 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0026h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002bh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestz<sbyte>(in Vector512<sbyte> src, in Vector512<sbyte> mask)
; vtestz__g512x8i_512x8i[61] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 94 c0 0f b6 c0 85 c0 74 1b c5 fd 10 41 20 c5 fd 10 4a 20 c4 e2 7d 17 c1 0f 94 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0026h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002bh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestz<ushort>(in Vector512<ushort> src, in Vector512<ushort> mask)
; vtestz__g512x16u_512x16u[61] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 94 c0 0f b6 c0 85 c0 74 1b c5 fd 10 41 20 c5 fd 10 4a 20 c4 e2 7d 17 c1 0f 94 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0026h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002bh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestz<short>(in Vector512<short> src, in Vector512<short> mask)
; vtestz__g512x16i_512x16i[61] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 94 c0 0f b6 c0 85 c0 74 1b c5 fd 10 41 20 c5 fd 10 4a 20 c4 e2 7d 17 c1 0f 94 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0026h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002bh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestz<uint>(in Vector512<uint> src, in Vector512<uint> mask)
; vtestz__g512x32u_512x32u[61] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 94 c0 0f b6 c0 85 c0 74 1b c5 fd 10 41 20 c5 fd 10 4a 20 c4 e2 7d 17 c1 0f 94 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0026h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002bh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestz<int>(in Vector512<int> src, in Vector512<int> mask)
; vtestz__g512x32i_512x32i[61] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 94 c0 0f b6 c0 85 c0 74 1b c5 fd 10 41 20 c5 fd 10 4a 20 c4 e2 7d 17 c1 0f 94 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0026h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002bh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestz<ulong>(in Vector512<ulong> src, in Vector512<ulong> mask)
; vtestz__g512x64u_512x64u[61] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 94 c0 0f b6 c0 85 c0 74 1b c5 fd 10 41 20 c5 fd 10 4a 20 c4 e2 7d 17 c1 0f 94 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0026h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002bh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestz<long>(in Vector512<long> src, in Vector512<long> mask)
; vtestz__g512x64i_512x64i[61] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 94 c0 0f b6 c0 85 c0 74 1b c5 fd 10 41 20 c5 fd 10 4a 20 c4 e2 7d 17 c1 0f 94 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0026h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002bh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestz<float>(in Vector512<float> src, in Vector512<float> mask)
; vtestz__g512x32f_512x32f[61] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 0e c1 0f 94 c0 0f b6 c0 85 c0 74 1b c5 fd 10 41 20 c5 fd 10 4a 20 c4 e2 7d 0e c1 0f 94 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vtestps ymm0,ymm1                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c1}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0026h vtestps ymm0,ymm1                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c1}
002bh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestz<double>(in Vector512<double> src, in Vector512<double> mask)
; vtestz__g512x64f_512x64f[61] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 0f c1 0f 94 c0 0f b6 c0 85 c0 74 1b c5 fd 10 41 20 c5 fd 10 4a 20 c4 e2 7d 0f c1 0f 94 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vtestpd ymm0,ymm1                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c1}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0026h vtestpd ymm0,ymm1                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c1}
002bh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
