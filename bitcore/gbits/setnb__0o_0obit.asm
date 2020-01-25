; long setnb<long>(long src, byte pos, bit value)
; setnb__0o_0obit[7ff7c6e76710h, 7ff7c6e76738h][40] = {0f 1f 44 00 00 48 8b c1 0f b6 d2 41 b9 01 00 00 00 8b ca 49 d3 e1 49 f7 d9 8b ca 41 d3 e0 41 8b d0 49 23 c1 48 23 c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:33:681
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0011h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0013h shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0016h neg r9                                  ; NEG r/m64 || REX.W F7 /3 || encoded[3]{49 f7 d9}
0019h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001bh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
001eh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0021h and rax,r9                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c1}
0024h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
