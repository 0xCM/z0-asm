; long xorsr(long a, byte offset)
; xorsr_64i[7ff7c7199da0h, 7ff7c7199db5h][21] = {0f 1f 44 00 00 48 8b c1 0f b6 ca 48 8b d0 48 d3 fa 48 33 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:356
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000eh sar rdx,cl                              ; SAR r/m64, CL || REX.W D3 /7 || encoded[3]{48 d3 fa}
0011h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
